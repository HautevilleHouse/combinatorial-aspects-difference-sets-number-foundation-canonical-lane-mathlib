import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsDifferenceSetsNumberFoundationCanonicalLaneLean

structure HadamardDifferenceSetPackage where
  groupOrder : ℕ
  group : Type u
  groupOp : group → group → group
  groupInv : group → group
  groupId : group
  groupIsGroup : Group group
  groupOrderEq : Fintype.card group = groupOrder
  subset : Set group
  parameters : ℕ × ℕ × ℤ
  parametersEq : ∃ (Z : ℕ) (W : ℕ) (λ : ℤ), subsetSize = Z ∧ subsetDifferenceCount = W ∧ lambdaValue = λ ∧ (4 * Z - groupOrder = λ^2)
  subsetSize : ℕ
  subsetDifferenceCount : ℕ
  lambdaValue : ℤ
  hadamardCondition : 4 * subsetSize - groupOrder = lambdaValue ^ 2

structure HadamardDifferenceSetEvidence (H : HadamardDifferenceSetPackage) where
  groupOrderEqClosed : H.groupOrderEq
  hadamardConditionClosed : H.hadamardCondition

def HadamardDifferenceSetClosed (H : HadamardDifferenceSetPackage) : Prop :=
  H.groupOrderEq ∧ H.hadamardCondition

theorem hadamard_difference_set_closed_from_evidence (H : HadamardDifferenceSetPackage)
  (E : HadamardDifferenceSetEvidence H) : HadamardDifferenceSetClosed H := by
  exact And.intro E.groupOrderEqClosed E.hadamardConditionClosed

end CombinatorialAspectsDifferenceSetsNumberFoundationCanonicalLaneLean
end HautevilleHouse