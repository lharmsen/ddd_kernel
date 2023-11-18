/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

// core interfaces
export 'src/interfaces/i_validatable.dart';
export 'src/interfaces/i_validator.dart';
export 'src/interfaces/i_value_failure.dart';

// errors
export 'src/errors/unexpected_value_error.dart';

// failures
export 'src/failures/empty_failure.dart';
export 'src/failures/exceeding_length_failure.dart';
export 'src/failures/invalid_email_failure.dart';

// validators
export 'src/validators/email_address_validator.dart';
export 'src/validators/max_string_length_validator.dart';
export 'src/validators/string_not_empty_validator.dart';

// value objects
export 'src/value_objects/value_object.dart';
export 'src/value_objects/unique_id.dart';

