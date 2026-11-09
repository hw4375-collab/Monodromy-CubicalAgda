# Monodromy via Type Transport in Cubical Agda

This repository is the public, reproducible release of Experiment 003 from the
nLab Homotopy Theory Materials project.  It formalizes the constructions in a
frozen version of nLab *Monodromy*, §4 “In homotopy type theory”.

The release is preliminary.  Mathematical correctness, formalization
correctness, and semantic alignment are all **pending** human review by
Hongwei (Alex) Wang (New York University Abu Dhabi).

## Verified scope

Given a family `P : B → Type`, the checked module provides:

- the dependent total space and its first projection;
- an equivalence from the homotopy fiber of that projection to `P b`;
- transport as both a function and an equivalence;
- pointwise identity and composition compatibility for transport;
- the loop-space monodromy map to self-equivalences of a fiber;
- pointed transport to the transported basepoint;
- induced **group** equivalences on the Cubical Library's based homotopy groups;
- explicit change-of-basepoint pointed and group equivalences.

The library convention `πGr n` presents conventional `π_(n+1)`, so the
natural-number index covers the mathematical range `n ≥ 1` in the source.

## Deliberate limitations

This release does **not** construct:

- a fundamental-group action on fixed-basepoint higher homotopy groups;
- representative independence after truncating loops to `π₁`;
- coherent choices of basepoint-return paths; or
- a complete higher-action coherence package.

These are not claimed by the checked code.

## Reproduce the Agda check

Required environment:

- Agda `2.8.0-3d04bac`;
- Cubical Agda Library v0.9 at commit
  `87af036ebd1c87956cf08fea44e62c7cf76392ca`, registered with Agda as `cubical`.

Run from the repository root:

```sh
agda -i agda -l cubical agda/NLabMonodromy.agda
```

The source has no holes, postulates, unresolved metas, or local termination
overrides.  Full verification evidence is in
[`verification/VERIFICATION.md`](verification/VERIFICATION.md).

## Contents

- [`agda/`](agda/) — verified Cubical Agda module and build instructions.
- [`paper/`](paper/) — preliminary Shadow Paper source, bibliography, and PDF.
- [`alignment/`](alignment/) — machine-readable source-to-Agda records and
  translation decisions.
- [`references/`](references/) — mathematical and Cubical Library source map.
- [`specification/`](specification/) — frozen claim index and public source
  provenance.  Raw nLab page captures are intentionally not redistributed.
- [`verification/`](verification/) — reproducibility results and experiment log.

## Attribution and review status

Researcher and intended reviewer: **Hongwei (Alex) Wang**, New York University
Abu Dhabi, Abu Dhabi, United Arab Emirates; hw4375@nyu.edu.

The paper retains its AI-assistance disclosure.  No AI system is a mathematical
author.  Type checking is not human review and does not, by itself, establish
semantic faithfulness.

## Sources

- nLab, [*Monodromy* — “In homotopy type theory”](https://ncatlab.org/nlab/show/monodromy#InHomotopyTypeTheory).
- The Univalent Foundations Program, [*Homotopy Type Theory*](https://homotopytypetheory.org/book/), §§2.3, 2.4, and 4.8.
- [Cubical Agda Library](https://github.com/agda/cubical), v0.9, pinned commit above.

See [`references/SOURCE_MAP.md`](references/SOURCE_MAP.md) and
[`references/FORMAL_DEPENDENCIES.md`](references/FORMAL_DEPENDENCIES.md) for
declaration-level attribution.

## License

Original source code and documentation in this repository are released under
the MIT License; see [`LICENSE`](LICENSE) and
[`references/LICENSE_NOTES.md`](references/LICENSE_NOTES.md).  The repository
does not redistribute nLab page captures or Cubical Library source code.
