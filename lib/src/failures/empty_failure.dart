import '../interfaces/i_value_failure.dart';

class EmptyFailure extends IValueFailure<String> {
  final String failedValue;

  const EmptyFailure({required this.failedValue});
}