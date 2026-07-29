import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsDifferenceSetsNumberFoundationCanonicalLaneLean

structure CyclicDifferenceSetFamilyPackage where
  group : Type u
  groupOperation : group → group → group
  cyclicGroup : Prop
  familyOfSets : Set (Set group)
  familySize : ℕ
  disjointness : Prop
  coveringCondition : Prop
  eachIsDifferenceSet : Prop

structure CyclicDifferenceSetFamilyEvidence (P : CyclicDifferenceSetFamilyPackage) where
  cyclicGroupClosed : P.cyclicGroup
  disjointnessClosed : P.disjointness
  coveringConditionClosed : P.coveringCondition
  eachIsDifferenceSetClosed : P.eachIsDifferenceSet

def CyclicDifferenceSetFamilyClosed (P : CyclicDifferenceSetFamilyPackage) : Prop :=
  P.cyclicGroup ∧ P.disjointness ∧ P.coveringCondition ∧ P.eachIsDifferenceSet

theorem cyclicDifferenceSetFamily_closed_from_evidence
    (P : CyclicDifferenceSetFamilyPackage) (E : CyclicDifferenceSetFamilyEvidence P) :
    CyclicDifferenceSetFamilyClosed P := by
  exact And.intro E.cyclicGroupClosed
    (And.intro E.disjointnessClosed
      (And.intro E.coveringConditionClosed E.eachIsDifferenceSetClosed))

end CombinatorialAspectsDifferenceSetsNumberFoundationCanonicalLaneLean
end HautevilleHouse