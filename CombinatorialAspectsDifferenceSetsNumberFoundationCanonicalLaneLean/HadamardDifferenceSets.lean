import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsDifferenceSetsNumberFoundationCanonicalLaneLean

structure HadamardDifferenceSetConfiguration (G : Type) [Group G] where
  subset : Set G
  order : ℕ
  parametersValid : Prop
  exists : Prop

structure HadamardDifferenceSetEvidence (G : Type) [Group G] (H : HadamardDifferenceSetConfiguration G) where
  parametersValidClosed : H.parametersValid
  existsClosed : H.exists

def HadamardDifferenceSetClosed (G : Type) [Group G] (H : HadamardDifferenceSetConfiguration G) : Prop :=
  H.parametersValid ∧ H.exists

theorem hadamard_difference_set_closed_from_evidence (G : Type) [Group G] (H : HadamardDifferenceSetConfiguration G) (E : HadamardDifferenceSetEvidence G H) : HadamardDifferenceSetClosed G H := by
  exact And.intro E.parametersValidClosed E.existsClosed

end CombinatorialAspectsDifferenceSetsNumberFoundationCanonicalLaneLean
end HautevilleHouse
