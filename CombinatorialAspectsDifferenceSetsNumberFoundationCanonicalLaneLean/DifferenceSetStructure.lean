import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsDifferenceSetsNumberFoundationCanonicalLaneLean

structure DifferenceSetPackage where
  group : Type u
  subgroup : Type v
  set : Set group
  parameters : (v, k, λ) : Nat × Nat × Nat
  differenceProperty : ∀ g ≠ 0, #{ (a,b) ∈ set × set | a*b⁻¹ = g } = λ

structure DifferenceSetEvidence (D : DifferenceSetPackage) where
  differencePropertyClosed : D.differenceProperty
  parametersClosed : D.parameters = (D.parameters.1, D.parameters.2, D.parameters.3)

def DifferenceSetClosed (D : DifferenceSetPackage) : Prop :=
  D.differenceProperty

theorem difference_set_closed_from_evidence (D : DifferenceSetPackage) (E : DifferenceSetEvidence D) :
    DifferenceSetClosed D := by
  exact E.differencePropertyClosed

end CombinatorialAspectsDifferenceSetsNumberFoundationCanonicalLaneLean
end HautevilleHouse
