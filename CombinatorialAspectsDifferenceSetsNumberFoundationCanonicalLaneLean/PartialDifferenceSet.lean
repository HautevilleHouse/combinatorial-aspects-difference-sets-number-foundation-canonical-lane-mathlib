import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsDifferenceSetsNumberFoundationCanonicalLaneLean

structure PartialDifferenceSetPackage where
  group : Type u
  groupOp : group → group → group
  groupInv : group → group
  groupId : group
  groupIsGroup : Group group
  subset : Set group
  parametersZ : ℕ
  parametersW : ℕ
  parametersDelta : ℤ
  parametersLambda : ℤ
  subsetSizeEq : Finset.card (Finset.filter (λ x => x ∈ subset) Finset.univ) = Z
  differenceEquation : ∀ g ∈ group, g ≠ groupId → Finset.card (Finset.filter (λ (x, y) => x ∈ subset ∧ y ∈ subset ∧ groupOp x (groupInv y) = g) (Finset.univ ×ˢ Finset.univ)) = W

structure PartialDifferenceSetEvidence (P : PartialDifferenceSetPackage) where
  subsetSizeEqClosed : P.subsetSizeEq
  differenceEquationClosed : P.differenceEquation

def PartialDifferenceSetClosed (P : PartialDifferenceSetPackage) : Prop :=
  P.subsetSizeEq ∧ P.differenceEquation

theorem partial_difference_set_closed_from_evidence (P : PartialDifferenceSetPackage)
  (E : PartialDifferenceSetEvidence P) : PartialDifferenceSetClosed P := by
  exact And.intro E.subsetSizeEqClosed E.differenceEquationClosed

end CombinatorialAspectsDifferenceSetsNumberFoundationCanonicalLaneLean
end HautevilleHouse