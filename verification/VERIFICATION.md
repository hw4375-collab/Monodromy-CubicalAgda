# Verification

## Environment

- Agda: `2.8.0-3d04bac`.
- Cubical Agda Library: v0.9, commit `87af036ebd1c87956cf08fea44e62c7cf76392ca`.

## Agda

The following command succeeded twice (initial implementation check and final reproducibility check):

```sh
agda \
  -i agda \
  -l cubical \
  agda/NLabMonodromy.agda
```

Result: `Checking NLabMonodromy`, exit status 0. A source scan finds no holes,
`postulate`, or termination override. The final source SHA-256 is
`6a5569a32c0b000bf2c07ee5bd1994f6e6dc3659b1d8319bec1ed3b596f9cf09`.
One intervening invocation was run from the paper directory with repository-root
relative paths and therefore failed before checking any source; it was rerun
from the repository root. This was a command-directory correction, not a
formalization failure.

## Alignment

`alignment/records.jsonl` contains ten JSON objects, one for each frozen source
statement. All records have `type_checked` status and pending human semantic
review by `REV-001`. The JSONL parser and source-declaration audit are run in
the final verification command sequence.

## LaTeX and PDF

`latexmk -pdf -interaction=nonstopmode -halt-on-error main.tex` succeeded three
times (the final invocation confirmed that all artifacts were up to date).
The final paper is a four-page PDF 1.5; its SHA-256 is
`b7236516b32244c1e039fa18181cad03ed35ecc26d7faf021263199f10a9268c`.
The final log contains no LaTeX errors, undefined control sequences, or
overfull boxes. Both `tikz-cd` diagrams render through the successful build.

## Scope and review

All ten extracted constructions are checked. The fundamental-group action and
higher coherences are intentionally not claimed. No human-review status is
approved or otherwise changed.
