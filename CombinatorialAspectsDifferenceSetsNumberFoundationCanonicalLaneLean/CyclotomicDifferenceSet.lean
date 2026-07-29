import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsDifferenceSetsNumberFoundationCanonicalLaneLean

structure CyclotomicDifferenceSet (A : AdmissibleClass) where
  q : ℕ
  e : ℕ
  d : ℕ
  primePower : Nat.Prime q ∧ q ≡ 1 mod e
  cyclotomicClasses : Finset ℕ
  differenceSet : DifferenceSetFamily A
  cyclotomicCondition : differenceSet.subset = { x : (ZMod q) | x ≠ 0 ∧ x^e = 1 }
  dCondition : d = (q-1)/e

structure CyclotomicDifferenceSetEvidence {A : AdmissibleClass} (C : CyclotomicDifferenceSet A) where
  primePowerClosed : C.primePower
  cyclotomicConditionClosed : C.cyclotomicCondition
  dConditionClosed : C.dCondition

def CyclotomicDifferenceSetClosed {A : AdmissibleClass} (C : CyclotomicDifferenceSet A) : Prop :=
  C.primePower ∧ C.cyclotomicCondition ∧ C.dCondition

theorem cyclotomic_difference_set_closed_from_evidence
    {A : AdmissibleClass} (C : CyclotomicDifferenceSet A) (E : CyclotomicDifferenceSetEvidence C) :
    CyclotomicDifferenceSetClosed C := by
  exact And.intro E.primePowerClosed
    (And.intro E.cyclotomicConditionClosed E.dConditionClosed)

end CombinatorialAspectsDifferenceSetsNumberFoundationCanonicalLaneLean
end HautevilleHouse