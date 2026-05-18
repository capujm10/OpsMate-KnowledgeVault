# Contribution Standard

## Entry Checklist

Before adding or updating an entry:

- Use the closest template.
- Add front matter metadata.
- Use searchable tags.
- Link related knowledge, runbooks, RCA notes, and references.
- Separate symptoms from confirmed causes.
- Include validation steps.
- Mark unsafe or mutating actions.
- Sanitize sensitive data.
- Run local validation.

## Writing Style

- Be concise and operational.
- Prefer direct evidence over theory.
- Use commands only when they are safe and relevant.
- Explain what a signal confirms and what it does not confirm.
- Avoid vendor blame unless evidence supports it.
- Avoid confidential details.

## Review Questions

- Would this help an engineer investigate faster?
- Can it be found with `rg`?
- Is it safe to publish in a portfolio repository?
- Does it preserve useful operational reasoning?
- Does it avoid pretending to be a production automation system?

