import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import 'error.dart';
import 'failures.dart';

@immutable
abstract class  ValueObject<T> {
  const ValueObject();
  Either<ValueFailure<T>, T> get value;

T getOrCrash()=> value.fold((f) => throw UnexpectedValueError(f), (r) => r);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is ValueObject<T> && o.value == value;
  }

  bool isValid() => value.isRight();

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';
}
