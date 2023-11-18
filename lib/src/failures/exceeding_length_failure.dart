import '../interfaces/i_value_failure.dart';

class ExceedingLengthFailure extends IValueFailure<String> {
  final String failedValue;
  final int max;

  const ExceedingLengthFailure({
    required this.failedValue,
    required this.max,
  });
}