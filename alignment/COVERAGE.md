# Coverage report

All ten extracted frozen claims are represented by successful declarations in
`NLabMonodromy.agda`; see `records.jsonl` for full types.  The formal evidence
for the two source diagrams is:

- the pullback square: `total-hofib≃`, an equivalence from the Cubical
  homotopy fiber `fiber total-projection b` to `P b`;
- the transport triangle: `transport-comp`, a path for each `u:P x`.

Neither is reported as a definitional equality.  `transport-refl` and
`transport-comp` are pointwise propositional equalities.  `monodromy-refl`
and `monodromy-comp` transport those facts to loops.  No coherence beyond
these pointwise witnesses is formalized.

The frozen section's final warning about a `π₁` action is respected: no
truncation, representative-independence theorem, coherent choice of return
paths, or fundamental-group action is implemented.
