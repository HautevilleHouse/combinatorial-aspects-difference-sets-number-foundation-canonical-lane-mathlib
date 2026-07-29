import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsDifferenceSetsNumberFoundationCanonicalLaneLean

structure AdmittedObject where
  carrier : Type
  groupOperation : carrier → carrier → carrier
  differenceSet : carrier → Prop
  conclusion : Prop

def differenceSetClosure (O : AdmittedObject) : Prop :=
  O.conclusion

end CombinatorialAspectsDifferenceSetsNumberFoundationCanonicalLaneLean
end HautevilleHouse