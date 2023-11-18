import 'package:dartz/dartz.dart';
import 'i_value_failure.dart';


abstract class IValidator<T> {
  Either<IValueFailure<T>, T> validate(T input);
}