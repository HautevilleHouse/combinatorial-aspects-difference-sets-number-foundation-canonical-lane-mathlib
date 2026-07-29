import CombinatorialAspectsDifferenceSetsNumberFoundationCanonicalLaneLean.DifferenceSetFoundation

namespace HautevilleHouse
namespace CombinatorialAspectsDifferenceSetsNumberFoundationCanonicalLaneLean

structure DifferenceSetSpace where
  carrier : Type
  groupStructure : Group carrier

structure DifferenceSetAdmittedObject where
  space : DifferenceSetSpace
  parameterSatisfied : Prop
  existenceProved : Prop
  conclusion : existenceProved

def DifferenceSetWitnessClosed (O : DifferenceSetAdmittedObject) : Prop :=
  O.existenceProved

end CombinatorialAspectsDifferenceSetsNumberFoundationCanonicalLaneLean
end HautevilleHouse