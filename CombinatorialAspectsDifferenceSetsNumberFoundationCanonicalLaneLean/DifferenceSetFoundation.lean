import CombinatorialAspectsDifferenceSetsNumberFoundationCanonicalLaneLean.AdmissibleClass

/-!
# Difference Set Foundation Package
-/

namespace HautevilleHouse
namespace CombinatorialAspectsDifferenceSetsNumberFoundationCanonicalLaneLean

structure DifferenceSetFoundationPackage where
  group : Type u
  subset : Type v
  order : Nat
  parameters : Prop
  multiplier : Prop
  derivedProperties : Prop

structure DifferenceSetFoundationEvidence (D : DifferenceSetFoundationPackage) where
  parametersClosed : D.parameters
  multiplierClosed : D.multiplier
  derivedPropertiesClosed : D.derivedProperties

def DifferenceSetFoundationClosed (D : DifferenceSetFoundationPackage) : Prop :=
  D.parameters ∧ D.multiplier ∧ D.derivedProperties

theorem difference_set_foundation_closed_from_evidence
    (D : DifferenceSetFoundationPackage) (E : DifferenceSetFoundationEvidence D) :
    DifferenceSetFoundationClosed D := by
  exact And.intro E.parametersClosed (And.intro E.multiplierClosed E.derivedPropertiesClosed)

end CombinatorialAspectsDifferenceSetsNumberFoundationCanonicalLaneLean
end HautevilleHouse