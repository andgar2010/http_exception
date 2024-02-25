import 'package:http_exception/http_exception.dart';
import 'package:http_status/http_status.dart';
import 'package:test/test.dart';

void main() {
  group('HttpException Class Base', () {
    const String stringDataExpect =
        'HttpException [404 Not Found]: Exception Test, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}';
    const String stringWithoutDataExpect =
        'HttpException [404 Not Found]: Exception Test';

    final Map<String, Object> mapExpectData = <String, Object>{
      'statusCode': 404,
      'name': 'Not Found',
      'detail': 'Exception Test',
      'uri': 'https://example.org',
      'foo': 'foo value',
      'bar': 'bar value',
    };

    final Map<String, Object?> mapExpect = <String, Object?>{
      'statusCode': 404,
      'name': 'Not Found',
      'detail': 'Exception Test',
      'uri': null,
    };

    Never throwErrorWithData() {
      throw HttpException(
        httpStatus: HttpStatus.notFound,
        detail: 'Exception Test',
        data: const <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
        uri: Uri.parse('https://example.org'),
      );
    }

    Never throwErrorWithoutData() {
      throw const HttpException(
        httpStatus: HttpStatus.notFound,
        detail: 'Exception Test',
      );
    }

    test('== and hashCode', () {
      final HttpException a = HttpStatus.notFound.exception();
      final HttpException b = HttpStatus.code404NotFound.exception();
      final HttpException c = HttpStatus.fromCode(404).exception();
      final HttpException d = HttpStatus.fromCode(405).exception();

      // Reflexive.
      expect(a, equals(a));
      expect(a.hashCode, equals(a.hashCode));

      // Symmetric.
      expect(a, equals(b));
      expect(a.hashCode, equals(b.hashCode));
      expect(b, equals(a));
      expect(b.hashCode, equals(a.hashCode));

      // Transitive.
      expect(b, equals(c));
      expect(b.hashCode, equals(c.hashCode));
      expect(a, equals(c));
      expect(a.hashCode, equals(c.hashCode));

      expect(a, isNot(equals(d)));
      expect(a.hashCode, isNot(equals(d.hashCode)));
      expect(b, isNot(equals(d)));
      expect(b.hashCode, isNot(equals(d.hashCode)));
      expect(c, isNot(equals(d)));
      expect(c.hashCode, isNot(equals(d.hashCode)));
    });

    test('should throw with check type test', () {
      expect(throwErrorWithData, throwsException);
      expect(throwErrorWithData, throwsA(isA<HttpException>()));
      expect(throwErrorWithoutData, throwsException);
      expect(throwErrorWithoutData, throwsA(isA<HttpException>()));
    });
    test('should throw with check message test', () {
      expect(
        throwErrorWithData,
        throwsA(
          isA<HttpException>().having(
            (HttpException x) => x.toString(),
            'message',
            contains(stringDataExpect),
          ),
        ),
      );
      expect(
        throwErrorWithData,
        throwsA(
          predicate(
            (Object? x) =>
                x is HttpException && x.toString() == stringDataExpect,
          ),
        ),
      );
    });
    test('should throw with check data test', () {
      expect(
        throwErrorWithData,
        throwsA(
          isA<HttpException>().having(
            (HttpException x) => x.data,
            'data',
            <String, String>{'foo': 'foo value', 'bar': 'bar value'},
          ),
        ),
      );
    });
    test('should throw with check status test', () {
      expect(
        throwErrorWithData,
        throwsA(
          isA<HttpException>().having(
            (HttpException x) => x.httpStatus.code,
            'statusCode',
            HttpStatus.notFound.code,
          ),
        ),
      );
    });
    test('should throw with check uri test', () {
      expect(
        throwErrorWithData,
        throwsA(
          isA<HttpException>().having(
            (HttpException x) => x.uri,
            'uri',
            Uri.parse('https://example.org'),
          ),
        ),
      );
    });
    test('should throw with check toMap() test', () {
      expect(
        throwErrorWithData,
        throwsA(
          isA<HttpException>().having(
            (HttpException x) => x.toMap(),
            'toMap()',
            mapExpectData,
          ),
        ),
      );
    });
    test('should throw with check empty data and url toMap() test', () {
      expect(
        throwErrorWithoutData,
        throwsA(
          isA<HttpException>().having(
            (HttpException x) => x.toMap(),
            'toMap()',
            mapExpect,
          ),
        ),
      );
    });
    test('should throw with check toString() test', () {
      expect(
        throwErrorWithData,
        throwsA(
          isA<HttpException>().having(
            (HttpException x) => x.toString(),
            'toString()',
            stringDataExpect,
          ),
        ),
      );
    });
    test('should throw with check empty data and url toString() test', () {
      expect(
        throwErrorWithoutData,
        throwsA(
          isA<HttpException>().having(
            (HttpException x) => x.toString(),
            'toString()',
            stringWithoutDataExpect,
          ),
        ),
      );
    });
  });
}
