import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsDifferenceSetsNumberFoundationCanonicalLaneLean

structure SingerDifferenceSetConfiguration (q : ℕ) where
  dimension : ℕ
  order : ℕ
  multiplier : ℕ
  parametersSatisfied : Prop
  exists : Prop

structure SingerDifferenceSetEvidence (q : ℕ) (S : SingerDifferenceSetConfiguration q) where
  parametersSatisfiedClosed : S.parametersSatisfied
  existsClosed : S.exists

def SingerDifferenceSetClosed (q : ℕ) (S : SingerDifferenceSetConfiguration q) : Prop :=
  S.parametersSatisfied ∧ S.exists

theorem singer_difference_set_closed_from_evidence (q : ℕ) (S : SingerDifferenceSetConfiguration q) (E : SingerDifferenceSetEvidence q S) : SingerDifferenceSetClosed q S := by
  exact And.intro E.parametersSatisfiedClosed E.existsClosed

end CombinatorialAspectsDifferenceSetsNumberFoundationCanonicalLaneLean
end HautevilleHouse
