import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsDifferenceSetsNumberFoundationCanonicalLaneLean

structure DifferenceSetCharacterSumPackage where
  group : Type u
  groupOp : group → group → group
  groupInv : group → group
  groupId : group
  groupIsGroup : Group group
  subset : Set group
  character : group → ℂ
  characterMultiplicative : ∀ a b, character (groupOp a b) = character a * character b
  sumOverSubset : ℂ
  sumOverSubsetEq : sumOverSubset = ∑ x in Finset.filter (λ y => y ∈ subset) Finset.univ, character x
  sumSquaredEquation : sumOverSubset * sumOverSubset = ℂ.ofReal (Finset.card (Finset.filter (λ x => x ∈ subset) Finset.univ)) + ℂ.ofReal (W - Z) * character (groupId)

structure DifferenceSetCharacterSumEvidence (D : DifferenceSetCharacterSumPackage) where
  characterMultiplicativeClosed : D.characterMultiplicative
  sumOverSubsetEqClosed : D.sumOverSubsetEq
  sumSquaredEquationClosed : D.sumSquaredEquation

def DifferenceSetCharacterSumClosed (D : DifferenceSetCharacterSumPackage) : Prop :=
  D.characterMultiplicative ∧ D.sumOverSubsetEq ∧ D.sumSquaredEquation

theorem difference_set_character_sum_closed_from_evidence (D : DifferenceSetCharacterSumPackage)
  (E : DifferenceSetCharacterSumEvidence D) : DifferenceSetCharacterSumClosed D := by
  exact And.intro E.characterMultiplicativeClosed (And.intro E.sumOverSubsetEqClosed E.sumSquaredEquationClosed)

end CombinatorialAspectsDifferenceSetsNumberFoundationCanonicalLaneLean
end HautevilleHouse