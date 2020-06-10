import 'package:framy_generator/framy_object.dart';
import 'package:framy_generator/generator/imports_generator.dart';
import 'package:test/test.dart';

void main() {
  group('imports generator result', () {
    test('should import material', () {
      final result = generateImports([]);
      expect(result.contains('import \'package:flutter/material.dart\';\n'),
          isTrue);
    });

    test('should import foundation', () {
      final result = generateImports([]);
      expect(result.contains('import \'package:flutter/foundation.dart\';\n'),
          isTrue);
    });

    test('should contain import from FramyObject', () {
      //given
      final framyObject = FramyObject()..import = 'package:my_app/theme.dart';
      //when
      final result = generateImports([framyObject]);
      //then
      expect(
          result.contains('import \'package:my_app/theme.dart\';\n'), isTrue);
    });
  });
}
