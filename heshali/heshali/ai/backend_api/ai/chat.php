<?php
// FILE: backend/api/ai/chat.php
require_once '../../config/db.php';
require_once '../../middleware/auth_check.php';
header('Content-Type: application/json');
requireRole(['student']);

$uid = $_SESSION['user_id'];

$input    = json_decode(file_get_contents('php://input'), true);
$messages = $input['messages'] ?? [];

if (empty($messages)) { echo json_encode(['error' => 'No messages']); exit; }

$lastUserMsg = end($messages);
if ($lastUserMsg && $lastUserMsg['role'] === 'user') {
    $stmt = $pdo->prepare("INSERT INTO ai_chat_messages (user_id, role, content) VALUES (?, 'user', ?)");
    $stmt->execute([$uid, $lastUserMsg['content']]);
}

$systemPrompt = "You are MindCare AI Counselor, a warm, empathetic mental health support assistant for LNBTI campus students in Sri Lanka.

Your role:
- Listen actively and validate feelings
- Provide evidence-based coping strategies
- Be supportive, non-judgmental, and caring
- Use simple, friendly language
- Keep responses concise (2-4 paragraphs max)
- Occasionally suggest professional counseling for serious issues
- Be culturally sensitive to Sri Lankan students

You help with: exam stress, anxiety, depression, relationships, loneliness, sleep issues, family problems, academic pressure.

IMPORTANT: If user mentions suicide, self-harm, or crisis situations:
1. Acknowledge their pain with compassion
2. Encourage them to call Sumithrayo: 011-2692909 or CCCline: 1333
3. Remind them that help is available

Never diagnose medical conditions. Always recommend professional help for serious issues.
Start responses with empathy. Use occasional emojis to feel warm and approachable.";

// Groq uses the standard OpenAI chat format — our history already matches it,
// we just need to prepend the system message.
$groqMessages = array_merge(
    [['role' => 'system', 'content' => $systemPrompt]],
    $messages
);

$payload = [
    'model'      => 'llama-3.3-70b-versatile',
    'messages'   => $groqMessages,
    'max_tokens' => 700,
];

function callGroq($payload) {
    $ch = curl_init('https://api.groq.com/openai/v1/chat/completions');
    curl_setopt_array($ch, [
        CURLOPT_RETURNTRANSFER => true,
        CURLOPT_POST           => true,
        CURLOPT_POSTFIELDS     => json_encode($payload),
        CURLOPT_HTTPHEADER     => [
            'Content-Type: application/json',
            'Authorization: Bearer ' . GROQ_API_KEY,
        ],
        CURLOPT_TIMEOUT => 30,
    ]);
    $response = curl_exec($ch);
    $httpCode = curl_getinfo($ch, CURLINFO_HTTP_CODE);
    curl_close($ch);
    return [$response, $httpCode];
}

[$response, $httpCode] = callGroq($payload);

$retries = 0;
while ($httpCode === 429 && $retries < 2) {
    sleep($retries === 0 ? 3 : 5);
    [$response, $httpCode] = callGroq($payload);
    $retries++;
}

$aiUnavailable = false;
$replyText = "I'm getting a lot of requests right now, but I don't want to leave you without support. While I catch up, please reach out to a real counselor or try a calming exercise — you deserve care right now. 💚";

if ($httpCode === 200) {
    $data = json_decode($response, true);
    $replyText = $data['choices'][0]['message']['content'] ?? $replyText;
} else {
    $aiUnavailable = true;
    error_log("Groq API error [$httpCode]: $response");
}

$stmt = $pdo->prepare("INSERT INTO ai_chat_messages (user_id, role, content) VALUES (?, 'assistant', ?)");
$stmt->execute([$uid, $replyText]);

echo json_encode(['reply' => $replyText, 'ai_unavailable' => $aiUnavailable]);
?>