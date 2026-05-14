Generate a retrieval metadata document for the attached agent skill file.

The skill file follows the Agent Skills Specification
(https://agentskills.io/specification).

The skill library root directory is defined by the environment variable
$SKILLS_ROOT. All file paths in the metadata must be relative to this root.

Read the attached skill file carefully, then generate the metadata
document using EXACTLY the following structure and field definitions.
Do not add or remove fields. Do not add commentary outside the structure.

# Skill Meta: {skill_name}

## ID
The unique identifier of the skill, taken directly from the skill file.

## Description
A single sentence (max 30 words) describing what this skill enables
the agent to do. Write it from the perspective of capability, not
implementation.

## Use When
A bullet list of 8–15 specific, concrete situations, symptoms, user
requests, or task descriptions where this skill should be loaded.

Rules:
- Write each bullet as a realistic phrase a user or agent might say
  or think when they need this skill.
- Cover diverse phrasings: technical terms, casual descriptions,
  symptom-based language, goal-based language.
- Include edge cases and non-obvious triggers.
- Do NOT use generic phrases like "when the user needs help" or
  "when relevant."
- Every bullet should be distinguishable from bullets of other skills.

## Do Not Use When
A bullet list of 3–6 specific situations where this skill should NOT
be loaded, even if it seems superficially related.

Rules:
- Focus on common false-positive scenarios — cases where a naive
  search might incorrectly match this skill.
- Be specific. "When the task is unrelated" is not useful.
- Reference neighboring or similar skills where appropriate.

## Related Skills
A bullet list of skill IDs that are frequently relevant alongside
this skill, or that address adjacent concerns.

Rules:
- Only list skills that genuinely co-occur or complement this skill.
- Do not list skills that are merely in the same category.
- If no strong relationships exist, leave this section empty.

## Tags
A comma-separated list of 10–20 single-word or short-phrase tags.

Rules:
- Include technical terms, common synonyms, abbreviations, tool
  names, framework names, and domain terms.
- Include both formal and informal vocabulary.
- Include terms that users might search for but that do not appear
  in the skill file itself.
- Do not repeat words already prominent in the Description or
  Use When sections unless they are important standalone search terms.

## Disambiguation
One to three sentences explaining how this skill differs from the
most similar skills in the library. This helps the retrieval system
distinguish between closely related skills.

If there are no closely related skills, write: "No close neighbors."

## Loads
The file path to the full skill file, relative to $SKILLS_ROOT.
Derive this from the attachment filename and its location within
the skill library folder structure.
Format: $SKILLS_ROOT/{skill_id}/{skill_filename}
```