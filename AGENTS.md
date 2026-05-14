# Project Guidelines

## Skill Format

This repo follows the [Agent Skills](https://agentskills.io) open standard. See [agentskills.io](https://agentskills.io) for general rules, guidelines, and specifications.

## Skill Metadata

The `prompts/` folder contains prompts for generating `SKILL.meta.md` files from skill definitions. While not part of the Agent Skills specification, these metadata files serve as a skill knowledge base for semantic search and retrieval — helping match user tasks to the right skill.

## Skill Organization

Skills are organized into bucket folders under `skills/`:

- `engineering/` — daily code work
- `anything-else/` — non-code workflow tools
- `work-in-progress/` — drafts not yet ready to ship
- `archived/` — retired skills

## Visibility Rules

- **Active skills** (`engineering/`, `anything-else/`) must have entries in root `README.md` and their bucket `README.md`
- **Non-indexed skills** (`work-in-progress/`, `archived/`) must NOT appear in root `README.md`
- Each bucket `README.md` lists every skill in the bucket with the skill name linked to its `SKILL.md` and a one-line description

## SKILL.md Format

Each skill is a folder containing a `SKILL.md` with YAML frontmatter:

```yaml
---
name: skill-name
description: One-line description used for discovery.
---

# Skill Name

Full skill content here...
```

The `name` must match the folder name. The `description` should be a concise trigger description.

## Scripts

- `scripts/link-skills.sh` — symlink active skills (`engineering/`, `anything-else/`) to `~/.agents/skills/`. Skips `work-in-progress/` and `archived/`. Override with `AGENTS_HOME` env var.
- `scripts/list-skills.sh` — list all `SKILL.md` files in the repo
