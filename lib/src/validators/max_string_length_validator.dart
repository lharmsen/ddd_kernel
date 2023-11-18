import 'package:dartz/dartz.dart';
import '../failures/exceeding_length_failure.dart';
import '../interfaces/i_value_failure.dart';
import '../interfaces/i_validator.dart';

class MaxStringLengthValidator implements IValidator<String> {
  final int maxLength;

  MaxStringLengthValidator(this.maxLength);

  @override
  Either<IValueFailure<String>, String> validate(String input) {
    if (input.length <= maxLength) {
      return right(input);
    } else {
      return left(ExceedingLengthFailure(
        failedValue: input,
        max: maxLength,
      ));
    }
  }
}