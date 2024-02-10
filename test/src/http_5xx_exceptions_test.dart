import 'package:http_exception/http_exception.dart';
import 'package:http_status/http_status.dart';
import 'package:test/test.dart';

void main() {
  group('HTTP 5XX Exceptions -', () {
    group('500 InternalServerErrorException', () {
      const stringHttpExpection = 'Internal Server Error';
      final codeStatusExpect = HttpStatus.internalServerError.code;
      final isAMatcher = isA<InternalServerErrorHttpException>();

      Never throwHttpCustomException() {
        throw InternalServerErrorHttpException(
          detail: "Not found key 'foo' and 'bar' in JSON",
          data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
          uri: Uri.parse('https://example.org'),
        );
      }

      final stringExpect =
          "HTTPException Status $codeStatusExpect - $stringHttpExpection: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

      final mapExpect = {
        'httpStatusCode': codeStatusExpect,
        'message':
            "$stringHttpExpection: Not found key 'foo' and 'bar' in JSON",
        'uri': Uri.parse('https://example.org'),
        'foo': 'foo value',
        'bar': 'bar value',
      };

      test('should throw with check type test', () {
        expect(throwHttpCustomException, throwsException);
        expect(throwHttpCustomException, throwsA(isA<HttpException>()));
        expect(throwHttpCustomException, throwsA(isAMatcher));
      });
      test('should throw with check message test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (x) => x.toString(),
              'message',
              contains(stringExpect),
            ),
          ),
        );
        expect(
          throwHttpCustomException,
          throwsA(
            predicate(
              (x) =>
                  x is InternalServerErrorHttpException &&
                  x.toString() == stringExpect,
            ),
          ),
        );
      });
      test('should throw with check data test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (x) => x.data,
              'data',
              {'foo': 'foo value', 'bar': 'bar value'},
            ),
          ),
        );
      });
      test('should throw with check status test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (x) => x.httpStatus.code,
              'httpStatusCode',
              codeStatusExpect,
            ),
          ),
        );
      });
      test('should throw with check uri test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (x) => x.uri,
              'uri',
              Uri.parse('https://example.org'),
            ),
          ),
        );
      });
      test('should throw with check toMap() test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (x) => x.toMap(),
              'toMap()',
              mapExpect,
            ),
          ),
        );
      });
      test('should throw with check toString() test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (x) => x.toString(),
              'toString()',
              stringExpect,
            ),
          ),
        );
      });
    });

    group('501 NotImplementedException', () {
      const stringHttpExpection = 'Not Implemented';
      final codeStatusExpect = HttpStatus.notImplemented.code;
      final isAMatcher = isA<NotImplementedHttpException>();

      Never throwHttpCustomException() {
        throw NotImplementedHttpException(
          detail: "Not found key 'foo' and 'bar' in JSON",
          data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
          uri: Uri.parse('https://example.org'),
        );
      }

      final stringExpect =
          "HTTPException Status $codeStatusExpect - $stringHttpExpection: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

      final mapExpect = {
        'httpStatusCode': codeStatusExpect,
        'message':
            "$stringHttpExpection: Not found key 'foo' and 'bar' in JSON",
        'uri': Uri.parse('https://example.org'),
        'foo': 'foo value',
        'bar': 'bar value',
      };

      test('should throw with check type test', () {
        expect(throwHttpCustomException, throwsException);
        expect(throwHttpCustomException, throwsA(isA<HttpException>()));
        expect(throwHttpCustomException, throwsA(isAMatcher));
      });
      test('should throw with check message test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (x) => x.toString(),
              'message',
              contains(stringExpect),
            ),
          ),
        );
        expect(
          throwHttpCustomException,
          throwsA(
            predicate(
              (x) =>
                  x is NotImplementedHttpException &&
                  x.toString() == stringExpect,
            ),
          ),
        );
      });
      test('should throw with check data test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (x) => x.data,
              'data',
              {'foo': 'foo value', 'bar': 'bar value'},
            ),
          ),
        );
      });
      test('should throw with check status test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (x) => x.httpStatus.code,
              'httpStatusCode',
              codeStatusExpect,
            ),
          ),
        );
      });
      test('should throw with check uri test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (x) => x.uri,
              'uri',
              Uri.parse('https://example.org'),
            ),
          ),
        );
      });
      test('should throw with check toMap() test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (x) => x.toMap(),
              'toMap()',
              mapExpect,
            ),
          ),
        );
      });
      test('should throw with check toString() test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (x) => x.toString(),
              'toString()',
              stringExpect,
            ),
          ),
        );
      });
    });

    group('502 BadGatewayException', () {
      const stringHttpExpection = 'Bad Gateway';
      final codeStatusExpect = HttpStatus.badGateway.code;
      final isAMatcher = isA<BadGatewayHttpException>();

      Never throwHttpCustomException() {
        throw BadGatewayHttpException(
          detail: "Not found key 'foo' and 'bar' in JSON",
          data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
          uri: Uri.parse('https://example.org'),
        );
      }

      final stringExpect =
          "HTTPException Status $codeStatusExpect - $stringHttpExpection: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

      final mapExpect = {
        'httpStatusCode': codeStatusExpect,
        'message':
            "$stringHttpExpection: Not found key 'foo' and 'bar' in JSON",
        'uri': Uri.parse('https://example.org'),
        'foo': 'foo value',
        'bar': 'bar value',
      };

      test('should throw with check type test', () {
        expect(throwHttpCustomException, throwsException);
        expect(throwHttpCustomException, throwsA(isA<HttpException>()));
        expect(throwHttpCustomException, throwsA(isAMatcher));
      });
      test('should throw with check message test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (x) => x.toString(),
              'message',
              contains(stringExpect),
            ),
          ),
        );
        expect(
          throwHttpCustomException,
          throwsA(
            predicate(
              (x) =>
                  x is BadGatewayHttpException && x.toString() == stringExpect,
            ),
          ),
        );
      });
      test('should throw with check data test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (x) => x.data,
              'data',
              {'foo': 'foo value', 'bar': 'bar value'},
            ),
          ),
        );
      });
      test('should throw with check status test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (x) => x.httpStatus.code,
              'httpStatusCode',
              codeStatusExpect,
            ),
          ),
        );
      });
      test('should throw with check uri test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (x) => x.uri,
              'uri',
              Uri.parse('https://example.org'),
            ),
          ),
        );
      });
      test('should throw with check toMap() test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (x) => x.toMap(),
              'toMap()',
              mapExpect,
            ),
          ),
        );
      });
      test('should throw with check toString() test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (x) => x.toString(),
              'toString()',
              stringExpect,
            ),
          ),
        );
      });
    });

    group('503 ServiceUnavailableException ', () {
      const stringHttpExpection = 'Service Unavailable';
      final codeStatusExpect = HttpStatus.serviceUnavailable.code;
      final isAMatcher = isA<ServiceUnavailableHttpException>();

      Never throwHttpCustomException() {
        throw ServiceUnavailableHttpException(
          detail: "Not found key 'foo' and 'bar' in JSON",
          data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
          uri: Uri.parse('https://example.org'),
        );
      }

      final stringExpect =
          "HTTPException Status $codeStatusExpect - $stringHttpExpection: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

      final mapExpect = {
        'httpStatusCode': codeStatusExpect,
        'message':
            "$stringHttpExpection: Not found key 'foo' and 'bar' in JSON",
        'uri': Uri.parse('https://example.org'),
        'foo': 'foo value',
        'bar': 'bar value',
      };

      test('should throw with check type test', () {
        expect(throwHttpCustomException, throwsException);
        expect(throwHttpCustomException, throwsA(isA<HttpException>()));
        expect(throwHttpCustomException, throwsA(isAMatcher));
      });
      test('should throw with check message test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (x) => x.toString(),
              'message',
              contains(stringExpect),
            ),
          ),
        );
        expect(
          throwHttpCustomException,
          throwsA(
            predicate(
              (x) =>
                  x is ServiceUnavailableHttpException &&
                  x.toString() == stringExpect,
            ),
          ),
        );
      });
      test('should throw with check data test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (x) => x.data,
              'data',
              {'foo': 'foo value', 'bar': 'bar value'},
            ),
          ),
        );
      });
      test('should throw with check status test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (x) => x.httpStatus.code,
              'httpStatusCode',
              codeStatusExpect,
            ),
          ),
        );
      });
      test('should throw with check uri test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (x) => x.uri,
              'uri',
              Uri.parse('https://example.org'),
            ),
          ),
        );
      });
      test('should throw with check toMap() test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (x) => x.toMap(),
              'toMap()',
              mapExpect,
            ),
          ),
        );
      });
      test('should throw with check toString() test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (x) => x.toString(),
              'toString()',
              stringExpect,
            ),
          ),
        );
      });
    });

    group('504 GatewayTimeoutException', () {
      const stringHttpExpection = 'Gateway Timeout';
      final codeStatusExpect = HttpStatus.gatewayTimeout.code;
      final isAMatcher = isA<GatewayTimeoutHttpException>();

      Never throwHttpCustomException() {
        throw GatewayTimeoutHttpException(
          detail: "Not found key 'foo' and 'bar' in JSON",
          data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
          uri: Uri.parse('https://example.org'),
        );
      }

      final stringExpect =
          "HTTPException Status $codeStatusExpect - $stringHttpExpection: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

      final mapExpect = {
        'httpStatusCode': codeStatusExpect,
        'message':
            "$stringHttpExpection: Not found key 'foo' and 'bar' in JSON",
        'uri': Uri.parse('https://example.org'),
        'foo': 'foo value',
        'bar': 'bar value',
      };

      test('should throw with check type test', () {
        expect(throwHttpCustomException, throwsException);
        expect(throwHttpCustomException, throwsA(isA<HttpException>()));
        expect(throwHttpCustomException, throwsA(isAMatcher));
      });
      test('should throw with check message test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (x) => x.toString(),
              'message',
              contains(stringExpect),
            ),
          ),
        );
        expect(
          throwHttpCustomException,
          throwsA(
            predicate(
              (x) =>
                  x is GatewayTimeoutHttpException &&
                  x.toString() == stringExpect,
            ),
          ),
        );
      });
      test('should throw with check data test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (x) => x.data,
              'data',
              {'foo': 'foo value', 'bar': 'bar value'},
            ),
          ),
        );
      });
      test('should throw with check status test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (x) => x.httpStatus.code,
              'httpStatusCode',
              codeStatusExpect,
            ),
          ),
        );
      });
      test('should throw with check uri test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (x) => x.uri,
              'uri',
              Uri.parse('https://example.org'),
            ),
          ),
        );
      });
      test('should throw with check toMap() test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (x) => x.toMap(),
              'toMap()',
              mapExpect,
            ),
          ),
        );
      });
      test('should throw with check toString() test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (x) => x.toString(),
              'toString()',
              stringExpect,
            ),
          ),
        );
      });
    });

    group('505 HttpVersionNotSupportedException', () {
      const stringHttpExpection = 'Http Version Not Supported';
      final codeStatusExpect = HttpStatus.httpVersionNotSupported.code;
      final isAMatcher = isA<HttpVersionNotSupportedHttpException>();

      Never throwHttpCustomException() {
        throw HttpVersionNotSupportedHttpException(
          detail: "Not found key 'foo' and 'bar' in JSON",
          data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
          uri: Uri.parse('https://example.org'),
        );
      }

      final stringExpect =
          "HTTPException Status $codeStatusExpect - $stringHttpExpection: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

      final mapExpect = {
        'httpStatusCode': codeStatusExpect,
        'message':
            "$stringHttpExpection: Not found key 'foo' and 'bar' in JSON",
        'uri': Uri.parse('https://example.org'),
        'foo': 'foo value',
        'bar': 'bar value',
      };

      test('should throw with check type test', () {
        expect(throwHttpCustomException, throwsException);
        expect(throwHttpCustomException, throwsA(isA<HttpException>()));
        expect(throwHttpCustomException, throwsA(isAMatcher));
      });
      test('should throw with check message test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (x) => x.toString(),
              'message',
              contains(stringExpect),
            ),
          ),
        );
        expect(
          throwHttpCustomException,
          throwsA(
            predicate(
              (x) =>
                  x is HttpVersionNotSupportedHttpException &&
                  x.toString() == stringExpect,
            ),
          ),
        );
      });
      test('should throw with check data test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (x) => x.data,
              'data',
              {'foo': 'foo value', 'bar': 'bar value'},
            ),
          ),
        );
      });
      test('should throw with check status test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (x) => x.httpStatus.code,
              'httpStatusCode',
              codeStatusExpect,
            ),
          ),
        );
      });
      test('should throw with check uri test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (x) => x.uri,
              'uri',
              Uri.parse('https://example.org'),
            ),
          ),
        );
      });
      test('should throw with check toMap() test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (x) => x.toMap(),
              'toMap()',
              mapExpect,
            ),
          ),
        );
      });
      test('should throw with check toString() test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (x) => x.toString(),
              'toString()',
              stringExpect,
            ),
          ),
        );
      });
    });

    group('506 InsufficientStorageException', () {
      const stringHttpExpection = 'Insufficient Storage';
      final codeStatusExpect = HttpStatus.insufficientStorage.code;
      final isAMatcher = isA<InsufficientStorageHttpException>();

      Never throwHttpCustomException() {
        throw InsufficientStorageHttpException(
          detail: "Not found key 'foo' and 'bar' in JSON",
          data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
          uri: Uri.parse('https://example.org'),
        );
      }

      final stringExpect =
          "HTTPException Status $codeStatusExpect - $stringHttpExpection: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

      final mapExpect = {
        'httpStatusCode': codeStatusExpect,
        'message':
            "$stringHttpExpection: Not found key 'foo' and 'bar' in JSON",
        'uri': Uri.parse('https://example.org'),
        'foo': 'foo value',
        'bar': 'bar value',
      };

      test('should throw with check type test', () {
        expect(throwHttpCustomException, throwsException);
        expect(throwHttpCustomException, throwsA(isA<HttpException>()));
        expect(throwHttpCustomException, throwsA(isAMatcher));
      });
      test('should throw with check message test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (x) => x.toString(),
              'message',
              contains(stringExpect),
            ),
          ),
        );
        expect(
          throwHttpCustomException,
          throwsA(
            predicate(
              (x) =>
                  x is InsufficientStorageHttpException &&
                  x.toString() == stringExpect,
            ),
          ),
        );
      });
      test('should throw with check data test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (x) => x.data,
              'data',
              {'foo': 'foo value', 'bar': 'bar value'},
            ),
          ),
        );
      });
      test('should throw with check status test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (x) => x.httpStatus.code,
              'httpStatusCode',
              codeStatusExpect,
            ),
          ),
        );
      });
      test('should throw with check uri test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (x) => x.uri,
              'uri',
              Uri.parse('https://example.org'),
            ),
          ),
        );
      });
      test('should throw with check toMap() test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (x) => x.toMap(),
              'toMap()',
              mapExpect,
            ),
          ),
        );
      });
      test('should throw with check toString() test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (x) => x.toString(),
              'toString()',
              stringExpect,
            ),
          ),
        );
      });
    });

    group('511 NetworkAuthenticationRequiredException', () {
      const stringHttpExpection = 'Network Authentication Required';
      final codeStatusExpect = HttpStatus.networkAuthenticationRequired.code;
      final isAMatcher = isA<NetworkAuthenticationRequiredHttpException>();

      Never throwHttpCustomException() {
        throw NetworkAuthenticationRequiredHttpException(
          detail: "Not found key 'foo' and 'bar' in JSON",
          data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
          uri: Uri.parse('https://example.org'),
        );
      }

      final stringExpect =
          "HTTPException Status $codeStatusExpect - $stringHttpExpection: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

      final mapExpect = {
        'httpStatusCode': codeStatusExpect,
        'message':
            "$stringHttpExpection: Not found key 'foo' and 'bar' in JSON",
        'uri': Uri.parse('https://example.org'),
        'foo': 'foo value',
        'bar': 'bar value',
      };

      test('should throw with check type test', () {
        expect(throwHttpCustomException, throwsException);
        expect(throwHttpCustomException, throwsA(isA<HttpException>()));
        expect(throwHttpCustomException, throwsA(isAMatcher));
      });
      test('should throw with check message test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (x) => x.toString(),
              'message',
              contains(stringExpect),
            ),
          ),
        );
        expect(
          throwHttpCustomException,
          throwsA(
            predicate(
              (x) =>
                  x is NetworkAuthenticationRequiredHttpException &&
                  x.toString() == stringExpect,
            ),
          ),
        );
      });
      test('should throw with check data test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (x) => x.data,
              'data',
              {'foo': 'foo value', 'bar': 'bar value'},
            ),
          ),
        );
      });
      test('should throw with check status test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (x) => x.httpStatus.code,
              'httpStatusCode',
              codeStatusExpect,
            ),
          ),
        );
      });
      test('should throw with check uri test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (x) => x.uri,
              'uri',
              Uri.parse('https://example.org'),
            ),
          ),
        );
      });
      test('should throw with check toMap() test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (x) => x.toMap(),
              'toMap()',
              mapExpect,
            ),
          ),
        );
      });
      test('should throw with check toString() test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (x) => x.toString(),
              'toString()',
              stringExpect,
            ),
          ),
        );
      });
    });
  });
}
