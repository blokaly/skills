# Skill Meta: crypto-rss-feed

## ID
crypto-rss-feed

## Description
Aggregates cryptocurrency market news from configurable RSS, Atom, and JSON feeds, filters by time period, and generates HTML reports.

## Use When
- User wants to check the latest crypto or blockchain news headlines
- User asks for a crypto news digest or daily market briefing
- User wants to generate a cryptocurrency news report for a specific time window
- User asks to add, remove, or list monitored crypto RSS feeds
- User mentions fetching or parsing crypto news from RSS/Atom/JSON feeds
- User wants an ad-hoc scan of a specific crypto news URL without saving to config
- User asks what happened in crypto markets recently
- User needs to track crypto headlines across multiple sources in one place
- User wants to monitor CoinTelegraph, CoinDesk, Decrypt, or similar outlets
- User asks to summarize recent Bitcoin, Ethereum, or altcoin news
- User mentions wanting a consolidated view of crypto media coverage
- User asks to fetch Google News crypto RSS for mainstream coverage
- User wants to automate recurring crypto feed monitoring

## Do Not Use When
- User wants to monitor general news RSS feeds unrelated to crypto (use a generic RSS skill instead)
- User wants to parse or build RSS/Atom feed XML structures (this skill consumes feeds, it doesn't build feed tooling)
- User asks for crypto price charts, trading signals, or technical analysis (this skill covers news, not market data)
- User wants to interact with blockchain nodes, wallets, or smart contracts (different domain entirely)
- User asks about security vulnerabilities or CVEs (use security-rss-feed instead)

## Related Skills
- security-rss-feed

## Tags
crypto, cryptocurrency, RSS, Bitcoin, Ethereum, blockchain, news aggregator, feed monitoring, CoinDesk, CoinTelegraph, market news, altcoin, DeFi, Web3, RSS parser, feed aggregator, news digest, Atom feed, JSON feed, headlines, crypto report

## Disambiguation
Closely related to security-rss-feed in structure (both aggregate RSS feeds and generate reports) but targets a completely different domain — cryptocurrency news media instead of vulnerability advisories. Use crypto-rss-feed for any market news, headlines, or media monitoring related to digital assets; use security-rss-feed for CVEs, threat intelligence, and vendor security bulletins.

## Loads
$SKILLS_ROOT/crypto-rss-feed/SKILL.md
