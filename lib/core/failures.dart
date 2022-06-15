import 'package:equatable/equatable.dart';

enum ErrorType { cache, other }

class Failure<E> extends Equatable {
  final E? error;
  final ErrorType errorType;

  const Failure({
    this.errorType = ErrorType.other,
    this.error,
  });

  const Failure.cache() : this(errorType: ErrorType.cache);

  const Failure.other() : this(errorType: ErrorType.other);

  @override
  List<Object?> get props => [errorType, error];
}
