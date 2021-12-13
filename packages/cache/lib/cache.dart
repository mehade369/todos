library cache;

import 'dart:developer';

/// {@template cache_client}
/// An in-memory cache client.
/// {@endtemplate}
class CacheClient {
  /// {@macro cache_client}
  CacheClient() : _cache = <String, Object?>{};

  final Map<String, Object?> _cache;

  /// Writes the provide [key], [value] pair to the in-memory cache.
  T write<T extends Object?>(final String key, final T value) {
    log('CacheClient.write ====> value = $value');
    return _cache[key] = value;
  }

  /// Looks up the value for the provided [key].
  /// Defaults to `null` if no value exists for the provided key.
  T? read<T extends Object?>(final String key) {
    final value = _cache[key];
    log('CacheClient.read ====> value = $value');
    return value is T ? value : null;
  }
}
