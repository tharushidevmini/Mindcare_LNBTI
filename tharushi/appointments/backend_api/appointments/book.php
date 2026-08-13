<?php
// FILE: backend/api/appointments/book.php
require_once '../../config/db.php';
require_once '../../middleware/auth_check.php';
header('Content-Type: application/json');
requireRole(['student']);

if ($_SERVER['REQUEST_METHOD'] !== 'POST') { echo json_encode(['error'=>'POST required']); exit; }

$cid   = (int)($_POST['counselor_id']   ?? 0);
$time  = trim($_POST['preferred_time']  ?? '');
$type  = trim($_POST['session_type']    ?? 'physical');
$notes = trim($_POST['notes']           ?? '');
$date  = trim($_POST['preferred_date']  ?? '') ?: date('Y-m-d');

if (!$cid || !$time) { echo json_encode(['error'=>'Counselor and time required']); exit; }
if ($date < date('Y-m-d')) { echo json_encode(['error'=>'Cannot book a date in the past']); exit; }

$stmt = $pdo->prepare("INSERT INTO appointments (student_id,counselor_id,session_type,preferred_date,preferred_time,notes,status) VALUES (?,?,?,?,?,?,'pending')");
$stmt->execute([$_SESSION['user_id'], $cid, $type, $date, $time, $notes]);
echo json_encode(['success'=>true]);
?>