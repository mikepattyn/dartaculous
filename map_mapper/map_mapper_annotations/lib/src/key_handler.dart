abstract class KeyHandler {
  const KeyHandler();

  void keyToMap(
    Map<String, dynamic> map,
    String value, [
    String fieldName = '',
  ]);
  String keyFromMap(
    Map<String, dynamic> map, [
    String fieldName = '',
  ]);

  String fieldNameToMapKey(String fieldName);
}
