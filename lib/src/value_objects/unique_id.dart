import 'package:dartz/dartz.dart';
import 'package:uuid/uuid.dart';
import '../interfaces/i_value_failure.dart';
import 'value_object.dart';

class UniqueId extends ValueObject<String> {
  @override
  final Either<IValueFailure<String>, String> value;

  // We cannot let a simple String be passed in. This would allow for possible non-unique IDs.
  factory UniqueId() {
    return UniqueId._(
      right(Uuid().v1()),
    );
  }

  /// Used with strings we trust are unique, such as database IDs.
  factory UniqueId.fromUniqueString(String uniqueIdStr) {
    return UniqueId._(
      right(uniqueIdStr),
    );
  }

  const UniqueId._(this.value);
}