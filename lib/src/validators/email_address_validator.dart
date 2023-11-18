import 'package:dartz/dartz.dart';
import '../interfaces/i_value_failure.dart';
import '../failures/invalid_email_failure.dart';
import '../interfaces/i_validator.dart';

class EmailAddressValidator extends IValidator<String> {
  @override
  Either<IValueFailure<String>, String> validate(String input) {
    const emailRegex =
    r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
    if (RegExp(emailRegex).hasMatch(input)) {
      return right(input);
    } else {
      return left(InvalidEmailFailure(failedValue: input));
    }
  }
}