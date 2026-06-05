import type { WorkbenchTrendItem } from '@vben/common-ui';

export namespace GithubApi {
  export interface CommitAuthor {
    name: string;
    email: string;
    date: string;
  }

  export interface Commit {
    sha: string;
    commit: {
      author: CommitAuthor;
      message: string;
    };
    html_url: string;
    author: null | {
      avatar_url: string;
      login: string;
    };
  }
}

const GITHUB_API_BASE = 'https://api.github.com';

const REPOS = [
  'SpringSunYY/LZ-litchi',
  'SpringSunYY/LZ-litchi-ui-admin-vben',
  'SpringSunYY/LZ-RuoYi',
  'SpringSunYY/LZ-Picture',
  'SpringSunYY/RuoYi_vue_flask',
  'SpringSunYY/LZ-RuoYi-App',
  'SpringSunYY/YY',
];

const CACHE_KEY = '__github_commits_cache__';
const CACHE_TTL_MS = 30 * 60 * 1000; // 30 分钟

interface CacheEntry {
  data: Array<{ commit: GithubApi.Commit; repo: string }>;
  timestamp: number;
}

function getCache(): CacheEntry | null {
  try {
    const raw = localStorage.getItem(CACHE_KEY);
    if (!raw) return null;
    const parsed = JSON.parse(raw) as CacheEntry;
    if (!Array.isArray(parsed.data) || !parsed.data.length) return null;
    if (typeof parsed.data[0]?.repo !== 'string') {
      clearCache();
      return null;
    }
    return parsed;
  } catch {
    clearCache();
    return null;
  }
}

function setCache(
  data: Array<{ commit: GithubApi.Commit; repo: string }>,
): void {
  try {
    localStorage.setItem(
      CACHE_KEY,
      JSON.stringify({ data, timestamp: Date.now() } satisfies CacheEntry),
    );
  } catch {
    // storage 可能已满或被禁用，忽略即可
  }
}

function clearCache(): void {
  localStorage.removeItem(CACHE_KEY);
}

function fetchRepoCommits(repo: string): Promise<GithubApi.Commit[]> {
  return fetch(
    `${GITHUB_API_BASE}/repos/${repo}/commits?per_page=10&sha=main`,
    { headers: { Accept: 'application/vnd.github.v3+json' } },
  ).then((res) => {
    if (!res.ok) throw new Error(`GitHub API error: ${res.status}`);
    return res.json() as Promise<GithubApi.Commit[]>;
  });
}

function formatRelativeDate(dateStr: string): string {
  const date = new Date(dateStr);
  const now = new Date();
  const diffMs = now.getTime() - date.getTime();
  const diffMins = Math.floor(diffMs / 60_000);
  const diffHours = Math.floor(diffMs / 3_600_000);
  const diffDays = Math.floor(diffMs / 86_400_000);

  if (diffMins < 1) return '刚刚';
  if (diffMins < 60) return `${diffMins}分钟前`;
  if (diffHours < 24) return `${diffHours}小时前`;
  if (diffDays < 7) return `${diffDays}天前`;
  if (diffDays < 30) return `${Math.floor(diffDays / 7)}周前`;
  return `${date.getFullYear()}-${String(date.getMonth() + 1).padStart(2, '0')}-${String(date.getDate()).padStart(2, '0')}`;
}

function buildTrendItem(
  commit: GithubApi.Commit,
  repo: string,
): WorkbenchTrendItem {
  const repoName = repo.split('/')[1];
  const message = commit.commit.message.split('\n')[0];
  const shortSha = commit.sha.slice(0, 7);
  const authorLogin = commit.author?.login ?? 'SpringSunYY';
  const avatarUrl = commit.author?.avatar_url ?? '';

  return {
    avatar: avatarUrl,
    title: `${authorLogin} · ${repoName}`,
    content: `推送代码到 <a href="${commit.html_url}" target="_blank">${repoName}@${shortSha}</a>：${message}`,
    date: formatRelativeDate(commit.commit.author.date),
  };
}

export async function getGithubCommits(): Promise<WorkbenchTrendItem[]> {
  const cached = getCache();
  if (cached && Date.now() - cached.timestamp < CACHE_TTL_MS) {
    return cached.data
      .slice(0, 10)
      .map(({ commit, repo }) => buildTrendItem(commit, repo));
  }

  clearCache();

  try {
    const results = await Promise.all(
      REPOS.map((repo) => fetchRepoCommits(repo)),
    );

    const taggedCommits: Array<{ commit: GithubApi.Commit; repo: string }> = [];
    for (const [i, REPO] of REPOS.entries()) {
      const repo = REPO!;
      for (const commit of results[i]!) {
        taggedCommits.push({ commit, repo });
      }
    }

    const sorted = taggedCommits.sort(
      (a, b) =>
        new Date(b.commit.commit.author.date).getTime() -
        new Date(a.commit.commit.author.date).getTime(),
    );

    setCache(sorted);
    return sorted
      .slice(0, 10)
      .map(({ commit, repo }) => buildTrendItem(commit, repo));
  } catch {
    return [];
  }
}
