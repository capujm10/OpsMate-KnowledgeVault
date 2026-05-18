# Future RAG Readiness

The vault is designed so future retrieval can be added without changing the authoring model.

## Ready Today

- Markdown source files
- Stable front matter metadata
- Consistent headings
- Relative links
- Search-friendly tags
- Concise operational sections
- Sanitized evidence conventions

## Not Implemented Now

- Vector databases
- Embedding pipelines
- Autonomous indexing
- Background daemons
- Heavy APIs
- Cloud sync
- GPU processing
- Runtime copilots

## Future Evolution Path

1. Add a read-only metadata inventory script.
2. Add local semantic indexing as an explicit manual command.
3. Add retrieval evaluation examples.
4. Add AI-assisted answer generation only after safety and source citation rules exist.
5. Keep the Markdown vault as the source of truth.

## Retrieval Safety Requirements

Any future RAG layer should:

- Cite source files.
- Refuse to answer from unsourced memory.
- Preserve sensitive-data rules.
- Avoid autonomous remediation.
- Stay local-first unless cloud use is explicitly approved.

