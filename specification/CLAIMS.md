# Claim extraction

| ID | Frozen nLab construction | Status |
|---|---|---|
| MON-HOTT-001 | `E := Σ_{b:B}P(b)` and `pr₁:E→B`. | type-checked |
| MON-HOTT-002 | `hofib_{pr₁}(b) ≃ P(b)` and the homotopy pullback square. | type-checked |
| MON-HOTT-003 | `p_*:P(x)→P(y)` for `p:x=_B y`. | type-checked |
| MON-HOTT-004 | `p_*:P(x)≃P(y)`; inverse-path transport is a homotopy inverse. | type-checked via library equivalence |
| MON-HOTT-005 | `(refl_x)_* ∼ id`. | type-checked pointwise path |
| MON-HOTT-006 | `(p·q)_* ∼ q_*∘p_*`. | type-checked pointwise path |
| MON-HOTT-007 | `mon_{P,b₀}:Ω(B,b₀)→Aut(P(b₀))` with identity/composition compatibility. | type-checked at pointwise coherence level |
| MON-HOTT-008 | `(F,f₀)≃_*(F,γ_*(f₀))`. | type-checked |
| MON-HOTT-009 | `π_n(F,f₀)≅π_n(F,γ_*(f₀))`, `n≥1`. | type-checked; `πGr n` is conventional `π_(n+1)` |
| MON-HOTT-010 | Explicit `r:f₁=f₀` supplies basepoint change. | type-checked conditionally |

The final prose on a fundamental-group action is a warning about additional
basepoint and composition compatibility, not a completed construction in this
frozen section.  It is therefore recorded as an explicit limitation rather
than an unformalized theorem identifier.
