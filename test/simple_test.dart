// ignore_for_file: deprecated_member_use_from_same_package

import 'package:http_exception/http_exception.dart';
import 'package:http_status/http_status.dart';
import 'package:test/test.dart';

void main() {
  test('toMap', () {
    const badRequest = BadRequestException(
      <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
      'Exception Test',
    );

    final map = badRequest.toMap();

    expect(map.length, 5);
    expect(map['httpStatusCode'], HttpStatusCode.badRequest);
    expect(map['message'], endsWith('Exception Test'));
    expect(map['foo'], 'foo value');
    expect(map['bar'], 'bar value');
  });

  test('toMap with null as data', () {
    const badRequest = BadRequestException(
      null,
      'Exception Test',
    );

    final map = badRequest.toMap();

    expect(map.length, 3);
    expect(map['httpStatusCode'], HttpStatusCode.badRequest);
    expect(map['message'], endsWith('Exception Test'));
  });
}
