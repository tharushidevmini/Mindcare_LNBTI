const API = window.location.origin + '/mindcare_final/backend';

document.addEventListener('DOMContentLoaded', loadPosts);

async function loadPosts() {
  const feed = document.getElementById('forum-feed');
  if (!feed) return;
  try {
    const res = await fetch(`${API}/api/forum/posts.php`);
    const data = await res.json();
    if (!data.posts || data.posts.length === 0) {
      feed.innerHTML = '<p style="text-align:center;color:#aaa;padding:2rem;">No posts yet. Be the first to share something.</p>';
      return;
    }
    feed.innerHTML = data.posts.map(p => `
      <div class="card" style="margin-bottom:1rem;">
        <div style="display:flex;justify-content:space-between;margin-bottom:.5rem;">
          <span style="font-weight:600;color:#888;">${p.anonymous_id || 'User#????'}</span>
          <span style="font-size:11px;color:#ccc;">${timeAgo(p.created_at)}</span>
        </div>
        <p style="color:#444;line-height:1.7;">${p.content}</p>
        <button class="btn btn-ghost btn-sm" onclick="likePost(this)">♡ 0</button>
        <button class="btn btn-ghost btn-sm" onclick="reportPost(${p.id})">Report</button>
      </div>`).join('');
  } catch(e) {
    feed.innerHTML = '<p style="color:red;">Error: ' + e.message + '</p>';
  }
}

async function submitPost() {
  const content  = document.getElementById('post-content').value.trim();
  const category = document.getElementById('post-category').value;
  if (content.length < 5) { toast.warning('Please write a little more before posting.'); return; }

  const fd = new FormData();
  fd.append('content',  content);
  fd.append('category', category);

  try {
    const res  = await fetch(`${API}/api/forum/post.php`, { method:'POST', body:fd });
    const data = await res.json();
    if (data.success) {
      document.getElementById('post-content').value = '';
      loadPosts();
      toast.success('Posted anonymously. Your voice matters 💬');
    } else {
      toast.error('Could not post: ' + (data.error || 'Please try again.'));
    }
  } catch(e) {
    toast.error('Network error: ' + e.message);
  }
}

async function reportPost(id) {
  const fd = new FormData();
  fd.append('post_id', id);
  fd.append('reason',  'user report');
  try {
    await fetch(`${API}/api/forum/report.php`, { method:'POST', body:fd });
    toast.info('Post reported. A counselor will review it.');
  } catch(e) {
    toast.error('Could not report. Please try again.');
  }
}

function likePost(btn) {
  const n = parseInt(btn.textContent.replace('♡ ', '')) + 1;
  btn.textContent = '♡ ' + n;
  btn.style.color = 'var(--color-orange)';
}

function timeAgo(d) {
  if (!d) return 'just now';
  const s = Math.floor((new Date() - new Date(d)) / 1000);
  if (s < 60)    return 'just now';
  if (s < 3600)  return Math.floor(s/60)   + 'm ago';
  if (s < 86400) return Math.floor(s/3600) + 'h ago';
  return Math.floor(s/86400) + 'd ago';
}