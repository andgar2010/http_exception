import 'package:http_exception/http_exception.dart';
import 'package:http_status/http_status.dart';
import 'package:test/test.dart';

void main() {
  group('HttpException Class Base', () {
    const stringDataExpect =
        'HttpException Status 404 - Not found(Exception Test), '
        'uri = https://example.org, HTTP data = {foo: foo value, '
        'bar: bar value}';
    const stringWithoutDataExpect =
        'HttpException Status 404 - Not found(Exception Test)';

    final mapExpectData = {
      'httpStatusCode': 404,
      'message': 'Not found(Exception Test)',
      'uri': Uri.parse('https://example.org'),
      'foo': 'foo value',
      'bar': 'bar value',
    };

    final mapExpect = {
      'httpStatusCode': 404,
      'message': 'Not found(Exception Test)',
      'uri': null,
    };

    Never throwErrorWithData() {
      throw HttpException(
        httpStatus: HttpStatus.notFound,
        message: 'Not found(Exception Test)',
        data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
        uri: Uri.parse('https://example.org'),
      );
    }

    Never throwErrorWithoutData() {
      throw const HttpException(
        httpStatus: HttpStatus.notFound,
        message: 'Not found(Exception Test)',
      );
    }

    test('== and hashCode', () {
      final a = HttpStatus.notFound.exception();
      final b = HttpStatus.code404NotFound.exception();
      final c = HttpStatus.fromCode(404).exception();
      final d = HttpStatus.fromCode(405).exception();

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
            (x) => x.toString(),
            'message',
            contains(stringDataExpect),
          ),
        ),
      );
      expect(
        throwErrorWithData,
        throwsA(
          predicate(
            (x) => x is HttpException && x.toString() == stringDataExpect,
          ),
        ),
      );
    });
    test('should throw with check data test', () {
      expect(
        throwErrorWithData,
        throwsA(
          isA<HttpException>().having(
            (x) => x.data,
            'data',
            {'foo': 'foo value', 'bar': 'bar value'},
          ),
        ),
      );
    });
    test('should throw with check status test', () {
      expect(
        throwErrorWithData,
        throwsA(
          isA<HttpException>().having(
            (x) => x.httpStatus.code,
            'httpStatusCode',
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
            (x) => x.uri,
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
            (x) => x.toMap(),
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
            (x) => x.toMap(),
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
            (x) => x.toString(),
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
            (x) => x.toString(),
            'toString()',
            stringWithoutDataExpect,
          ),
        ),
      );
    });
  });
}
