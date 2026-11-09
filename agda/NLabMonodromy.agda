{-# OPTIONS --safe --cubical --no-import-sorts -WnoUnsupportedIndexedMatch --guardedness #-}

-- Experiment 003: formal interface for the frozen nLab Monodromy §4 source.
-- The frozen specification and the alignment records in the parent directory
-- identify every declaration below.  This module has no postulates or holes.

module NLabMonodromy where

open import Cubical.Foundations.Prelude
open import Cubical.Foundations.Equiv using (invEquiv)
open import Cubical.Foundations.Equiv.Base using (_≃_; fiber; idEquiv)
open import Cubical.Foundations.Transport using (substEquiv; substComposite)
open import Cubical.Data.Sigma using (Σ; fst)
open import Cubical.Data.Sigma.Properties using (fiberProjEquiv)
open import Cubical.Foundations.Pointed.Base using (Pointed; _≃∙_)
open import Cubical.Homotopy.Loopspace using (Ω)
open import Cubical.Homotopy.Group.Base using (πGr; πIso)
open import Cubical.Algebra.Group.Morphisms using (GroupEquiv)
open import Cubical.Data.Nat using (ℕ)

private
  variable
    ℓ ℓ' : Level

-- MON-HOTT-001: total space and its first projection.
total-space : {B : Type ℓ} → (B → Type ℓ') → Type (ℓ-max ℓ ℓ')
total-space {B = B} P = Σ B P

total-projection : {B : Type ℓ} (P : B → Type ℓ') → total-space P → B
total-projection P = fst

-- MON-HOTT-002: the homotopy fiber of the projection is the stated fiber.
-- This orientation is the one displayed in the frozen nLab specification.
total-hofib≃ : {B : Type ℓ} (P : B → Type ℓ') (b : B)
             → fiber (total-projection P) b ≃ P b
total-hofib≃ P b = invEquiv (fiberProjEquiv _ _ _)

-- MON-HOTT-003: transport as a function.
transport-map : {B : Type ℓ} (P : B → Type ℓ') {x y : B}
              → x ≡ y → P x → P y
transport-map P p = subst P p

-- MON-HOTT-004: the same transport packaged as an equivalence.
transport-equiv : {B : Type ℓ} (P : B → Type ℓ') {x y : B}
                → x ≡ y → P x ≃ P y
transport-equiv P p = substEquiv P p

-- MON-HOTT-005: pointwise propositional identity compatibility.
transport-refl : {B : Type ℓ} (P : B → Type ℓ') {x : B} (u : P x)
               → transport-map P refl u ≡ u
transport-refl P u = transportRefl u

-- MON-HOTT-006: pointwise homotopy evidence for the composition triangle.
-- In Cubical Agda, p ∙ q means first p and then q.
transport-comp : {B : Type ℓ} (P : B → Type ℓ') {x y z : B}
               → (p : x ≡ y) (q : y ≡ z) (u : P x)
               → transport-map P (p ∙ q) u
               ≡ transport-map P q (transport-map P p u)
transport-comp P p q u = substComposite P p q u

-- MON-HOTT-007: the loop-space monodromy map.
Aut : Type ℓ → Type ℓ
Aut A = A ≃ A

monodromy : {B : Type ℓ} (P : B → Type ℓ') {b₀ : B}
           → b₀ ≡ b₀ → Aut (P b₀)
monodromy P γ = transport-equiv P γ

monodromy-map : {B : Type ℓ} (P : B → Type ℓ') (b₀ : B)
               → fst (Ω (B , b₀)) → Aut (P b₀)
monodromy-map P b₀ γ = monodromy P γ

-- The only loop-space coherences claimed in this experiment are these
-- pointwise paths; no higher-coherent action structure is constructed.
monodromy-refl : {B : Type ℓ} (P : B → Type ℓ') {b₀ : B} (u : P b₀)
                → monodromy P refl .fst u ≡ u
monodromy-refl P u = transport-refl P u

monodromy-comp : {B : Type ℓ} (P : B → Type ℓ') {b₀ : B}
                → (p q : b₀ ≡ b₀) (u : P b₀)
                → monodromy P (p ∙ q) .fst u
                ≡ monodromy P q .fst (monodromy P p .fst u)
monodromy-comp P p q u = transport-comp P p q u

-- MON-HOTT-008: pointed monodromy has the transported, not fixed, target.
fiber∙ : {B : Type ℓ} (P : B → Type ℓ') (b₀ : B) → P b₀ → Pointed ℓ'
fiber∙ P b₀ f₀ = P b₀ , f₀

transported-point : {B : Type ℓ} (P : B → Type ℓ') {b₀ : B}
                  → (f₀ : P b₀) (γ : b₀ ≡ b₀) → P b₀
transported-point P f₀ γ = transport-map P γ f₀

pointed-monodromy : {B : Type ℓ} (P : B → Type ℓ') {b₀ : B}
                  → (f₀ : P b₀) (γ : b₀ ≡ b₀)
                  → fiber∙ P b₀ f₀
                  ≃∙ fiber∙ P b₀ (transported-point P f₀ γ)
pointed-monodromy P f₀ γ = monodromy P γ , refl

-- MON-HOTT-009: πGr n is the library presentation of conventional π_(n+1).
pointed-monodromy-π : {B : Type ℓ} (P : B → Type ℓ') {b₀ : B}
                    → (f₀ : P b₀) (γ : b₀ ≡ b₀) (n : ℕ)
                    → GroupEquiv (πGr n (fiber∙ P b₀ f₀))
                                 (πGr n (fiber∙ P b₀
                                   (transported-point P f₀ γ)))
pointed-monodromy-π P f₀ γ n = πIso (pointed-monodromy P f₀ γ) n

-- MON-HOTT-010: explicit change-of-basepoint data, never inferred.
basepoint-change∙ : {A : Type ℓ} (a b : A) → a ≡ b
                  → (A , a) ≃∙ (A , b)
basepoint-change∙ {A = A} a b r = idEquiv A , r

basepoint-change-π : {A : Type ℓ} (a b : A) → (r : a ≡ b) (n : ℕ)
                   → GroupEquiv (πGr n (A , a)) (πGr n (A , b))
basepoint-change-π {A = A} a b r n = πIso (basepoint-change∙ a b r) n
