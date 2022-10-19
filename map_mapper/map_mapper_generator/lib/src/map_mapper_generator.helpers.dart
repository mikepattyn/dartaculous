import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';

Iterable<ElementAnnotation> getAnnotationsByName(DartType dartType, String annotationName) {
  return dartType.element2!.metadata.where((m) {
    DartType annotationType;
    if (m.element! is PropertyAccessorElement) {
      annotationType = (m.element! as PropertyAccessorElement).returnType;
    } else if (m.element! is ConstructorElement) {
      annotationType = (m.element! as ConstructorElement).returnType;
    } else {
      return false;
    }
    if (annotationType is InterfaceType) {
      final types = <InterfaceType>[annotationType, ...annotationType.allSupertypes];
      return types.where((element) {
        return element.getDisplayString(withNullability: true) == annotationName;
      }).isNotEmpty;
    }
    return false;
  });
}
