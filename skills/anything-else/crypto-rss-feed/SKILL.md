---
name: crypto-rss-feed
description: Use when you need to fetch, aggregate, and report on crypto market news from RSS/Atom/JSON feeds. Handles feed management, scheduled scans, and HTML report generation.
---

# Crypto RSS Feed Agent

Monitors, aggregates, and reports on crypto-market news from configurable RSS, Atom, and JSON feeds.

## Prerequisites

- **Node.js**: v24 or higher

## Files

```
crypto-rss-feed/
├── SKILL.md              ← this file
├── scripts/main.cjs      ← entry point
└── assets/settings.json  ← feed config
```

## Storage

| Path | Contents |
|------|----------|
| `[storagePath]/data/` | JSON snapshots per feed |
| `[storagePath]/report/` | Generated HTML reports |
| Default root | System temp dir (`/crypto-rss-feed/`) |

Customize via `assets/settings.json → defaults.storagePath`.

## Default Feeds

The bundled config includes 11 curated feeds:

| Feed | URL |
|------|-----|
| CoinTelegraph | `cointelegraph.com/rss` |
| Decrypt | `decrypt.co/feed` |
| The Block | `theblock.co/rss.xml` |
| CoinDesk | `coindesk.com/arc/outboundfeeds/rss/` |
| NewsBTC | `newsbtc.com/feed` |
| Bitcoin Magazine | `bitcoinmagazine.com/.rss/full/` |
| The Defiant | `thedefiant.io/feed` |
| CoinGape | `coingape.com/feed` |
| Blockworks | `blockworks.co/feed` (Atom) |
| Crypto Briefing | `cryptobriefing.com/feed` |
| Google News Crypto | `news.google.com/rss/search?q=...` |

## Triggers

Activate when the user asks to:

- Check or fetch the latest crypto news
- Generate a crypto news report
- Add, remove, or list feeds
- Scan a specific crypto RSS/Atom URL
- Summarize recent crypto market headlines

## Usage

### Default Scan

Fetches all configured feeds for the last 24h, generates an HTML report.

```bash
node scripts/main.cjs
```

### Custom Time Period

```bash
node scripts/main.cjs --period 48
```

### Custom Config

```bash
node scripts/main.cjs --config path/to/settings.json
```

### Ad-hoc Feed (no config change)

```bash
node scripts/main.cjs --url https://example.com/rss --name "Example Feed"
```

### Multiple Ad-hoc Feeds

```bash
node scripts/main.cjs \
  --url https://feed1.com/rss --name "Feed 1" \
  --url https://feed2.com/rss --name "Feed 2"
```

## CLI Options

| Flag | Short | Default | Description |
|------|-------|---------|-------------|
| `--config` | `-c` | `assets/settings.json` | Path to config file |
| `--period` | `-p` | From config (`24h`) | Lookback window in hours |
| `--url` | `-u` | — | Ad-hoc feed URL (repeatable) |
| `--name` | `-n` | Auto-derived | Feed name for ad-hoc URL (repeatable) |

## Notes

- Supports RSS 2.0, Atom, and JSON Feed formats
- Fetches include browser-like `User-Agent` headers to avoid bot-blocking
- Some sites (e.g. BeInCrypto, CryptoSlate) use Cloudflare JS challenges — these cannot be fetched server-side without a headless browser
- Google News RSS (`news.google.com/rss/search?q=...`) is an excellent aggregator for mainstream crypto coverage from hundreds of outlets
