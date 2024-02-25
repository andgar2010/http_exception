// ignore_for_file: deprecated_member_use_from_same_package, no-magic-number

import 'package:http_exception/http_exception.dart';
import 'package:http_status/http_status.dart';
import 'package:test/test.dart';

void main() {
  test('toMap', () {
    const BadRequestException badRequest = BadRequestException(
      <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
      'Exception Test',
    );

    final Map<String, dynamic> map = badRequest.toMap();

    expect(map.length, 6);
    expect(map['statusCode'], HttpStatusCode.badRequest);
    expect(map['name'], 'Bad Request');
    expect(map['detail'], endsWith('Exception Test'));
    expect(map['foo'], 'foo value');
    expect(map['bar'], 'bar value');
  });

  test('toMap with null as data', () {
    const BadRequestException badRequest = BadRequestException(
      null,
      'Exception Test',
    );

    final Map<String, dynamic> map = badRequest.toMap();

    expect(map.length, 4);
    expect(map['statusCode'], HttpStatusCode.badRequest);
    expect(map['detail'], endsWith('Exception Test'));
  });
}
