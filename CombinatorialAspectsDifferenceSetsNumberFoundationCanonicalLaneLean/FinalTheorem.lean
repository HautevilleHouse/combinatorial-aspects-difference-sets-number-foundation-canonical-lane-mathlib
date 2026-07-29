import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialAspectsDifferenceSetsNumberFoundationCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.CombinatorialAspectsDifferenceSetsNumberFoundationCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CombinatorialAspectsDifferenceSetsNumberFoundationCanonicalLaneLean

def ConstrainedDifferenceSetClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_difference_set_endgame (A : AdmissibleClass) :
    ConstrainedDifferenceSetClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CombinatorialAspectsDifferenceSetsNumberFoundationCanonicalLaneLean
end HautevilleHouse