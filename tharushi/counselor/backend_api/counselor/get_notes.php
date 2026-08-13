<?php
// FILE: backend/api/counselor/get_notes.php
// Returns ALL session notes for a student (newest first) — the full history.
require_once '../../config/db.php';
require_once '../../middleware/auth_check.php';
header('Content-Type: application/json');

$counselor_id = $_SESSION['user_id'] ?? 4;
$student_id   = (int)($_GET['student_id'] ?? 0);

if (!$student_id) { echo json_encode(['notes' => []]); exit; }

$stmt = $pdo->prepare("SELECT id, notes, created_at FROM counselor_notes WHERE counselor_id = ? AND student_id = ? ORDER BY created_at DESC");
$stmt->execute([$counselor_id, $student_id]);
echo json_encode(['notes' => $stmt->fetchAll()]);
?>