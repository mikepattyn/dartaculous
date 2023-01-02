import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:source_gen/source_gen.dart';

List<DartType> getKnownSubclasses(
    List<DartType>? subClasses, Type annotationType,) {
  final lst = <DartType>[];
  if (subClasses == null) {
    return lst;
  }
  for (final subClass in subClasses) {
    final element = subClass.element as ClassElement;
    final reader =
        TypeChecker.fromRuntime(annotationType).firstAnnotationOf(element);
    if (reader == null) {
      continue;
    }
    if (!element.isAbstract) {
      lst.add(subClass);
    }

    final kscReader = reader.getField('knownSubClasses')?.toListValue();
    if (kscReader == null || kscReader.isEmpty) {
      continue;
    }
    final grandSubclasses = kscReader
        .map((e) => e.toTypeValue())
        .where((e) => e != null)
        .map((e) => e as DartType)
        .toList();

    final grandKnownSubclasses =
        getKnownSubclasses(grandSubclasses, annotationType);

    lst.addAll(grandKnownSubclasses);
  }
  return lst;
}
