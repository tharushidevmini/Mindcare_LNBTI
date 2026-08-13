<?php
require_once '../../config/db.php';
require_once '../../middleware/auth_check.php';
header('Content-Type: application/json');

$uid = $_SESSION['user_id'] ?? 2;

$stmt = $pdo->prepare("SELECT id, title, mood_emoji, share_with_counselor, share_with_guardian, entry_date FROM diary_entries WHERE user_id = ? ORDER BY entry_date DESC");
$stmt->execute([$uid]);
echo json_encode(['entries' => $stmt->fetchAll()]);
?>