part of 'csharp_builder.dart';

const _daNamespace = 'System.ComponentModel.DataAnnotations';

List<CSharpAttribute> _getAttributes(FieldDescriptor fd) {
  final requiredAttr = _getRequiredAttribute(fd);
  final stringLengthAttr = _getStringLengthAttribute(fd);
  final emailAttr = _getEmailAddressAttribute(fd);
  final regularExpressionAttr = _getRegularExpressionAttribute(fd);
  final rangeAttr = _getRangeAttribute(fd);
  final annotations = <CSharpAttribute>[
    if (requiredAttr != null) requiredAttr,
    if (stringLengthAttr != null) stringLengthAttr,
    if (emailAttr != null) emailAttr,
    if (regularExpressionAttr != null) regularExpressionAttr,
    if (rangeAttr != null) rangeAttr,
  ];
  return annotations;
}

CSharpAttribute? _getRequiredAttribute(FieldDescriptor fd) {
  final annot =
      TypeChecker.fromRuntime(sea.Required).getFieldAnnotation(fd.fieldElement);
  if (annot == null) {
    return null;
  }
  return CSharpAttribute(
    name: 'Required',
    parameters: [if (fd.itemType.isDartCoreString) 'AllowEmptyStrings = false'],
    namespace: _daNamespace,
  );
}

CSharpAttribute? _getEmailAddressAttribute(FieldDescriptor fd) {
  final annot = TypeChecker.fromRuntime(sea.EmailAddress)
      .getFieldAnnotation(fd.fieldElement);
  if (annot == null) {
    return null;
  }
  return CSharpAttribute(
    name: 'EmailAddress',
    parameters: [],
    namespace: _daNamespace,
  );
}

CSharpAttribute? _getRegularExpressionAttribute(FieldDescriptor fd) {
  final annot = TypeChecker.fromRuntime(sea.RegularExpression)
      .getFieldAnnotation(fd.fieldElement);
  if (annot == null) {
    return null;
  }
  final expression = annot.getField('expression')?.toStringValue() ??
      ''.replaceAll(r'\', r'\\').replaceAll(r'"', r'\"');
  return CSharpAttribute(
    name: 'RegularExpression',
    parameters: ['"$expression"'],
    namespace: _daNamespace,
  );
}

CSharpAttribute? _getRangeAttribute(FieldDescriptor fd) {
  final annot =
      TypeChecker.fromRuntime(sea.Range).getFieldAnnotation(fd.fieldElement);
  if (annot == null) {
    return null;
  }
  /*
  *   final T? minValue;
  final T? maxValue;

  * */

  final minValue = _getStringValue(annot.getField('minValue'));
  final maxValue = _getStringValue(annot.getField('maxValue'));
  if (minValue == '' && maxValue == '') return null;
  final rMinValue = _getRangeValue(minValue, maxValue, '-');
  final rMaxValue = _getRangeValue(maxValue, minValue, '');

  return CSharpAttribute(
    name: 'Range',
    parameters: [rMinValue, rMaxValue],
    namespace: _daNamespace,
  );
}

String _getStringValue(DartObject? obj) {
  if (obj == null) return '';
  final type = obj.type;
  if (type == null) return '';
  if (type.isDartCoreDouble) {
    final dstr = obj.toDoubleValue().toString();
    if (dstr.contains('.')) return dstr;
    return '$dstr.0';
  }
  if (type.isDartCoreInt) {
    return obj.toIntValue().toString();
  }
  return '';
}

String _getRangeValue(String strValue, String strOther, String sign) {
  if (strValue != '') return strValue;
  if (strOther.contains('.')) return '${sign}double.MaxValue';
  return '${sign}int.MaxValue';
}

CSharpAttribute? _getStringLengthAttribute(FieldDescriptor fd) {
  final annot = TypeChecker.fromRuntime(sea.StringLength)
      .getFieldAnnotation(fd.fieldElement);
  if (annot == null) {
    return null;
  }
  final maxLength =
      annot.getField('maxLength')?.toIntValue()?.toString() ?? 'int.MaxValue';
  final minLength = annot.getField('minLength')?.toIntValue();
  return CSharpAttribute(
    name: 'StringLength',
    parameters: [
      maxLength,
      if (minLength != null) 'MinimumLength = $minLength'
    ],
    namespace: _daNamespace,
  );
}
