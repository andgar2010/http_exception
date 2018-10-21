import 'package:http_exception/http_exception.dart';
import 'package:http_exception/http_status.dart';
import 'package:test/test.dart';

void main() {
  test('toMap', () {
    const badRequest = BadRequestException(
      <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
      'Exception Test',
    );

    final map = badRequest.toMap();

    expect(map.length, 4);
    expect(map['status'], HttpStatus.BAD_REQUEST);
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

    expect(map.length, 2);
    expect(map['status'], HttpStatus.BAD_REQUEST);
    expect(map['message'], endsWith('Exception Test'));
  });
}
