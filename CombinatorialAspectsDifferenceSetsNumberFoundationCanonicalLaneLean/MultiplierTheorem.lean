import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsDifferenceSetsNumberFoundationCanonicalLaneLean

structure MultiplierTheoremPackage where
  group : Type u
  groupOperation : group → group → group
  differenceSet : Set group
  multiplierAutomorphism : group → group
  multiplierCondition : Prop
  primeDivisor : ℕ
  fixedPointStructure : Prop
  multiplierMapDefined : Prop

structure MultiplierTheoremEvidence (P : MultiplierTheoremPackage) where
  multiplierConditionClosed : P.multiplierCondition
  primeDivisorClosed : Nat.Prime P.primeDivisor
  fixedPointStructureClosed : P.fixedPointStructure
  multiplierMapDefinedClosed : P.multiplierMapDefined

def MultiplierTheoremClosed (P : MultiplierTheoremPackage) : Prop :=
  P.multiplierCondition ∧ Nat.Prime P.primeDivisor ∧ P.fixedPointStructure ∧ P.multiplierMapDefined

theorem multiplierTheorem_closed_from_evidence
    (P : MultiplierTheoremPackage) (E : MultiplierTheoremEvidence P) :
    MultiplierTheoremClosed P := by
  exact And.intro E.multiplierConditionClosed
    (And.intro E.primeDivisorClosed
      (And.intro E.fixedPointStructureClosed E.multiplierMapDefinedClosed))

end CombinatorialAspectsDifferenceSetsNumberFoundationCanonicalLaneLean
end HautevilleHouse