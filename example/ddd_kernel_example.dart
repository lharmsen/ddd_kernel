import 'package:ddd_kernel/ddd_kernel.dart';

void main() {
  var uniqueId = UniqueId();
  print(uniqueId.getOrCrash());
}
