import 'dart:ui' show hashValues;

import 'package:flutter/foundation.dart';

class IndexedKey extends LocalKey {
  /// Creates a key that delegates its [operator==] to the given value.
  ///
  /// It contains an index used in [ScrollablePositionedList].
  const IndexedKey(this.value, this.index);

  /// The value to which this key delegates its [operator==].
  final String value;

  /// Index used to show position in a list.
  final int index;

  @override
  bool operator ==(Object other) {
    if (other.runtimeType != runtimeType) return false;
    return other is IndexedKey && other.value == value;
  }

  @override
  int get hashCode => hashValues(runtimeType, value);

  @override
  String toString() {
    return '(IndexedKey) index: $index, value: $value';
  }
}
