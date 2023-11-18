import 'package:dartz/dartz.dart';
import '../../ddd_kernel.dart';

class EmailAddress extends ValueObject<String> {

  @override
  final Either<IValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    return EmailAddress._(EmailAddressValidator().validate(input));
  }

  const EmailAddress._(this.value);
}