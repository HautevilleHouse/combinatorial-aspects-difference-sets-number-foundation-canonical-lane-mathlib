import CombinatorialAspectsDifferenceSetsNumberFoundationCanonicalLaneLean.DifferenceSetFoundation

/-!
# Singer Parameters Package
-/

namespace HautevilleHouse
namespace CombinatorialAspectsDifferenceSetsNumberFoundationCanonicalLaneLean

structure SingerParametersPackage where
  q : Nat
  k : Nat
  lambda : Nat
  cyclicGroup : Prop
  differenceSetExists : Prop
  parametersMatch : Prop

structure SingerParametersEvidence (S : SingerParametersPackage) where
  cyclicGroupClosed : S.cyclicGroup
  differenceSetExistsClosed : S.differenceSetExists
  parametersMatchClosed : S.parametersMatch

def SingerParametersClosed (S : SingerParametersPackage) : Prop :=
  S.cyclicGroup ∧ S.differenceSetExists ∧ S.parametersMatch

theorem singer_parameters_closed_from_evidence
    (S : SingerParametersPackage) (E : SingerParametersEvidence S) :
    SingerParametersClosed S := by
  exact And.intro E.cyclicGroupClosed (And.intro E.differenceSetExistsClosed E.parametersMatchClosed)

end CombinatorialAspectsDifferenceSetsNumberFoundationCanonicalLaneLean
end HautevilleHouse