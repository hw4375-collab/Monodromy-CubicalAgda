# Agda reproduction

Pinned environment: Agda `2.8.0-3d04bac`; Cubical Agda Library v0.9 at commit
`87af036ebd1c87956cf08fea44e62c7cf76392ca`.

From the repository root:

```sh
agda -i agda -l cubical agda/NLabMonodromy.agda
```

The module contains no holes, postulates, or termination overrides.  It
reuses library declarations through attributed wrappers rather than copying
library proofs.
