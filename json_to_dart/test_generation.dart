import 'package:json_to_dart/json_to_dart.dart';
import 'dart:io';

void main() async {
  String formClass = File('../docs/assets/define/private_fields/form_class')
      .readAsStringSync();
  String defineFunction =
      File('../docs/assets/define/private_fields/define_function.json')
          .readAsStringSync();

  final jsonStr = '''{
    "myInt": 1,
    "myDouble": 1.5,
    "myDoubleAsInt": 1,
    "myIntList": [1, 2, 3],
    "myDoubleList": [1.1, 2, 3.3]
  }''';

  String? rs = jsonToDart(
    className: 'TestClass',
    json: jsonStr,
    formClass: formClass,
    defineFunction: defineFunction,
  );

  print(rs);
}
