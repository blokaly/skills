# Skill Meta: security-rss-feed

## ID
security-rss-feed

## Description
Monitors security vulnerability and advisory RSS/JSON feeds, aggregates results, filters by time period, and generates consolidated reports.

## Use When
- User wants to check the latest security vulnerabilities or CVEs
- User asks for a security news digest or daily briefing
- User needs to monitor CISA, NVD, or vendor advisory feeds
- User wants to generate a security report for a specific time window
- User asks to add, remove, or list monitored security feeds
- User mentions fetching or parsing RSS feeds related to security
- User wants an ad-hoc fetch from a specific security URL without saving it to config
- User asks what security incidents or vulnerabilities were disclosed recently
- User needs to track security advisories across multiple sources in one place
- User wants to automate recurring security feed monitoring

## Do Not Use When
- User wants to monitor general news RSS feeds unrelated to security (use a generic RSS skill instead)
- User wants to parse or manipulate RSS feed XML structure itself (this skill consumes feeds, it doesn't build feed parsers)
- User asks to set up CI/CD pipelines or deployment automation (different domain)
- User wants to scan code for vulnerabilities (use SAST/DAST tools, not feed aggregation)

## Related Skills

## Tags
security, RSS, CVE, vulnerability, advisory, CISA, NVD, feed monitoring, threat intelligence, security news, cybersec, bulletin, patch tuesday, zero-day, data breach, RSS parser, feed aggregator, security report, incident tracking

## Disambiguation
No close neighbors.

## Loads
$SKILLS_ROOT/security-rss-feed/SKILL.md
