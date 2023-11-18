import "package:dartz/dartz.dart";
import '../failures/empty_failure.dart';
import '../interfaces/i_value_failure.dart';
import '../interfaces/i_validator.dart';

class StringNotEmptyValidator extends IValidator<String> {
  @override
  Either<IValueFailure<String>, String> validate(String input) {
    if (input.isEmpty) {
      return left(EmptyFailure(failedValue: input));
    } else {
      return right(input);
    }
  }

}