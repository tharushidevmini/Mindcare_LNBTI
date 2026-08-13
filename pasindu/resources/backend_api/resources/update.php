<?php
// FILE: backend/api/resources/update.php
require_once '../../config/db.php';
require_once '../../middleware/auth_check.php';
header('Content-Type: application/json');
requireRole(['counselor', 'admin']);

$id       = (int)($_POST['id'] ?? 0);
$title    = trim($_POST['title'] ?? '');
$desc     = trim($_POST['description'] ?? '');
$filePath = trim($_POST['file_path'] ?? '');

if (!$id || !$title) { echo json_encode(['error' => 'Title is required']); exit; }

$stmt = $pdo->prepare("SELECT * FROM resources WHERE id = ?");
$stmt->execute([$id]);
$r = $stmt->fetch();
if (!$r) { echo json_encode(['error' => 'Not found']); exit; }

if ($_SESSION['role'] === 'counselor' && (int)$r['uploaded_by'] !== (int)$_SESSION['user_id']) {
    echo json_encode(['error' => 'You can only edit resources you uploaded']); exit;
}

$stmt = $pdo->prepare("UPDATE resources SET title=?, description=?, file_path=? WHERE id=?");
$stmt->execute([$title, $desc, $filePath, $id]);
echo json_encode(['success' => true]);
?>