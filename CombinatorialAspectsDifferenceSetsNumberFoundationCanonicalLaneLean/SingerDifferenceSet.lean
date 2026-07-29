import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsDifferenceSetsNumberFoundationCanonicalLaneLean

structure SingerDifferenceSetPackage where
  projectivePlaneOrder : ℕ
  group : Type u
  groupOperation : group → group → group
  differenceSet : Set group
  singerCondition : Prop
  parametersQ : ℕ
  parametersN : ℕ
  parametersK : ℕ
  parametersLambda : ℕ
  singerParametersEquation : Prop
  cyclicGroup : Prop
  differenceSetFromProjectivePlane : Prop

structure SingerDifferenceSetEvidence (P : SingerDifferenceSetPackage) where
  singerConditionClosed : P.singerCondition
  singerParametersEquationClosed : P.singerParametersEquation
  cyclicGroupClosed : P.cyclicGroup
  differenceSetFromProjectivePlaneClosed : P.differenceSetFromProjectivePlane

def SingerDifferenceSetClosed (P : SingerDifferenceSetPackage) : Prop :=
  P.singerCondition ∧ P.singerParametersEquation ∧ P.cyclicGroup ∧ P.differenceSetFromProjectivePlane

theorem singerDifferenceSet_closed_from_evidence
    (P : SingerDifferenceSetPackage) (E : SingerDifferenceSetEvidence P) :
    SingerDifferenceSetClosed P := by
  exact And.intro E.singerConditionClosed
    (And.intro E.singerParametersEquationClosed
      (And.intro E.cyclicGroupClosed E.differenceSetFromProjectivePlaneClosed))

end CombinatorialAspectsDifferenceSetsNumberFoundationCanonicalLaneLean
end HautevilleHouse