import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsDifferenceSetsNumberFoundationCanonicalLaneLean

structure CyclotomicDifferenceSetConfiguration (p : Type) [AddCommGroup p] where
  order : ℕ
  multiplier : ℕ
  parameters : Prop
  exists : Prop

structure CyclotomicDifferenceSetEvidence (p : Type) [AddCommGroup p] (C : CyclotomicDifferenceSetConfiguration p) where
  parametersClosed : C.parameters
  existsClosed : C.exists

def CyclotomicDifferenceSetClosed (p : Type) [AddCommGroup p] (C : CyclotomicDifferenceSetConfiguration p) : Prop :=
  C.parameters ∧ C.exists

theorem cyclotomic_difference_set_closed_from_evidence (p : Type) [AddCommGroup p] (C : CyclotomicDifferenceSetConfiguration p) (E : CyclotomicDifferenceSetEvidence p C) : CyclotomicDifferenceSetClosed p C := by
  exact And.intro E.parametersClosed E.existsClosed

end CombinatorialAspectsDifferenceSetsNumberFoundationCanonicalLaneLean
end HautevilleHouse
