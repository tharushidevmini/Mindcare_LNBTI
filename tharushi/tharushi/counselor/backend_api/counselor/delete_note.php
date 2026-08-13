<?php
// FILE: backend/api/counselor/delete_note.php
// Deletes one session note (must belong to the logged-in counselor).
require_once '../../config/db.php';
require_once '../../middleware/auth_check.php';
header('Content-Type: application/json');

if ($_SERVER['REQUEST_METHOD'] !== 'POST') { echo json_encode(['error' => 'POST required']); exit; }

$counselor_id = $_SESSION['user_id'] ?? 4;
$note_id      = (int)($_POST['note_id'] ?? 0);
if (!$note_id) { echo json_encode(['error' => 'Missing note_id']); exit; }

$stmt = $pdo->prepare("DELETE FROM counselor_notes WHERE id = ? AND counselor_id = ?");
$stmt->execute([$note_id, $counselor_id]);
echo json_encode(['success' => true]);
?>