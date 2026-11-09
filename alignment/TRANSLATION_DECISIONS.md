# Translation decisions

1. The nLab direction `hofib(pr₁,b)≃P(b)` is preserved explicitly by applying
   `invEquiv` to the library's oppositely oriented `fiberProjEquiv`.
2. `transport-map` and `transport-equiv` are separate declarations, so a
   transport function is not silently identified with its equivalence package.
3. The composition triangle is encoded pointwise, exactly at the homotopy
   level supplied by `substComposite`; no strict equality is asserted.
4. The target of pointed monodromy is based at the transported point.  Fixed
   basepoint maps require `r` and are recorded only in `MON-HOTT-010`.
5. `πGr n` is documented as conventional `π_(n+1)`.  The source's `n≥1`
   statement is therefore not shifted or weakened.
6. Library proofs are reused and attributed.  The local code provides
   source-indexed composition and no alternative mathematical proof.
