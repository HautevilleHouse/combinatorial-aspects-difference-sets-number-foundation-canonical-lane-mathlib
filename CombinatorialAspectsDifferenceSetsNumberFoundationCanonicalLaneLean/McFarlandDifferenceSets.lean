import CombinatorialAspectsDifferenceSetsNumberFoundationCanonicalLaneLean.HadamardDifferenceSets

/-!
# McFarland Difference Sets Package
-/

namespace HautevilleHouse
namespace CombinatorialAspectsDifferenceSetsNumberFoundationCanonicalLaneLean

structure McFarlandDifferenceSetPackage where
  q : Nat
  d : Nat
  parameters : (Nat × Nat × Nat)
  construction : Prop
  classification : Prop

structure McFarlandDifferenceSetEvidence (M : McFarlandDifferenceSetPackage) where
  constructionClosed : M.construction
  classificationClosed : M.classification

def McFarlandDifferenceSetClosed (M : McFarlandDifferenceSetPackage) : Prop :=
  M.construction ∧ M.classification

theorem mcfarland_difference_set_closed_from_evidence
    (M : McFarlandDifferenceSetPackage) (E : McFarlandDifferenceSetEvidence M) :
    McFarlandDifferenceSetClosed M := by
  exact And.intro E.constructionClosed E.classificationClosed

end CombinatorialAspectsDifferenceSetsNumberFoundationCanonicalLaneLean
end HautevilleHouse