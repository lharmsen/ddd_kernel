import '../interfaces/i_value_failure.dart';

class InvalidEmailFailure extends IValueFailure<String> {
  final String failedValue;

  InvalidEmailFailure({required this.failedValue});
}