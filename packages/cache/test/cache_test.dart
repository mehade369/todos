import 'package:cache/cache.dart';
import 'package:test/test.dart';

void main() {
  group('CacheTest -', () {
    final cache = CacheClient();
    const _value = 'value';
    const _key = 'key';
    String? _nullValue;

    test('Return null , if the key does not match', () {
      expect(cache.read(_key), isNull);
      cache.write(_key, _value);
      expect(cache.read(_key), equals(_value));
    });
    test('Return null , if the value was null', () {
      cache.write(_key, _nullValue);
      expect(cache.read(_key), isNull);
    });
  });
}
