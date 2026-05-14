# Blokaly Skills

A collection of personal agent skills for AI agents.

## Structure

Skills are organized into bucket folders under `skills/`:

- `engineering/` — code work
- `anything-else/` — non-code workflow tools
- `work-in-progress/` — drafts not yet ready to ship
- `archived/` — retired skills

## Conventions

See [AGENTS.md](./AGENTS.md) for full conventions.

## Skill Format

This repo follows the [Agent Skills](https://agentskills.io) open standard. See [agentskills.io](https://agentskills.io) for general rules, guidelines, and specifications.

## Skill Metadata

The `prompts/` folder contains prompts for generating `SKILL.meta.md` files from skill definitions. While not part of the [Agent Skills](https://agentskills.io) specification, these metadata files serve as a skill knowledge base for semantic search and retrieval — helping match user tasks to the right skill.

## Quick Start

1. Clone this repo
2. Run `./scripts/link-skills.sh` to symlink active skills to `~/.agents/skills/`
3. Restart your agent to pick up new skills

## Engineering

<!-- Add skills here as you create them -->

## Anything Else

<!-- Add skills here as you create them -->
