<?php
// FILE: backend/api/appointments/dismiss_cancellation.php
// Lets the counselor clear cancellation notices from their dashboard.
// action=all  -> clears every cancelled notice for this counselor
// otherwise   -> clears the single appointment_id given
require_once '../../config/db.php';
require_once '../../middleware/auth_check.php';
header('Content-Type: application/json');

// TEMP: counselor session (same fallback as pending.php / cancelled.php)
if (!isset($_SESSION['user_id'])) {
    $_SESSION['user_id']   = 4;
    $_SESSION['role']      = 'counselor';
    $_SESSION['full_name'] = 'Miss Mekala';
}

$cid    = $_SESSION['user_id'];
$action = $_POST['action'] ?? '';

if ($action === 'all') {
    $stmt = $pdo->prepare("DELETE FROM appointments WHERE counselor_id = ? AND status = 'cancelled'");
    $stmt->execute([$cid]);
    echo json_encode(['success' => true, 'cleared' => $stmt->rowCount()]);
    exit;
}

$id = (int)($_POST['appointment_id'] ?? 0);
if (!$id) { echo json_encode(['error' => 'Missing appointment_id']); exit; }

$stmt = $pdo->prepare("DELETE FROM appointments WHERE id = ? AND counselor_id = ? AND status = 'cancelled'");
$stmt->execute([$id, $cid]);
echo json_encode(['success' => true]);
?>