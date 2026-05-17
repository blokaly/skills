---
name: security-rss-feed
description: Use when you need to monitor security vulnerabilities, advisories, or news from pre-configured or ad-hoc RSS/JSON feeds to generate consolidated reports.
---

# Security RSS Feed Skill

This skill provides specialized procedures for monitoring security feeds. It automates the aggregation, filtering, and reporting of security data, ensuring consistent tracking across different environments. By default, the skill stores data in the system's temporary directory (`/tmp/security-rss-feed` or equivalent) to maintain portability.

## Prerequisites

- **Node.js**: v24 or higher.

## Storage

- **Snapshots**: Cached in `[STORAGE_ROOT]/data/`.
- **Reports**: Generated in `[STORAGE_ROOT]/report/`.
- **Default Root**: System temporary directory.
- **Customization**: Configure a custom `storagePath` in `assets/settings.json`.

## Triggers

Activate this skill when the user requests to:

- "Check the latest security news"
- "Generate a security report for the last 24 hours"
- "Fetch updates from the CISA advisory feed"
- "Add a new security feed to my monitor"

## Usage

### Execute Default Scan

Perform a scan using the default configuration.

```bash
node scripts/main.cjs
```

### Specify Configuration

Use an alternative configuration file (default: `assets/settings.json`).

```bash
node scripts/main.cjs --config assets/settings.json
```

### Filter by Time Period

Generate a report for the last X hours.

```bash
node scripts/main.cjs --period 48
```

### Fetch Ad-hoc Feeds

Retrieve updates from a specific URL without modifying the existing configuration.

```bash
node scripts/main.cjs --url https://example.com/rss --name "Example Feed"
```
