import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsDifferenceSetsNumberFoundationCanonicalLaneLean

structure DifferenceSetFamily (A : AdmissibleClass) where
  ambientGroup : Type u
  subset : Set ambientGroup
  parameters : (v k λ : ℕ)
  orderCondition : v = (λ * (v - 1) / k) + 1
  parametersConsistent : k^2 = λ * v + (k - λ)
  differenceSetCondition : ∀ g ≠ 0, |{ (a,b) ∈ subset × subset | a * b⁻¹ = g }| = λ

structure DifferenceSetFamilyEvidence {A : AdmissibleClass} (D : DifferenceSetFamily A) where
  orderConditionClosed : D.orderCondition
  parametersConsistentClosed : D.parametersConsistent
  differenceSetConditionClosed : D.differenceSetCondition

def DifferenceSetFamilyClosed {A : AdmissibleClass} (D : DifferenceSetFamily A) : Prop :=
  D.orderCondition ∧ D.parametersConsistent ∧ D.differenceSetCondition

theorem difference_set_family_closed_from_evidence
    {A : AdmissibleClass} (D : DifferenceSetFamily A) (E : DifferenceSetFamilyEvidence D) :
    DifferenceSetFamilyClosed D := by
  exact And.intro E.orderConditionClosed
    (And.intro E.parametersConsistentClosed E.differenceSetConditionClosed)

end CombinatorialAspectsDifferenceSetsNumberFoundationCanonicalLaneLean
end HautevilleHouse