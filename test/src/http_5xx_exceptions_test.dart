import 'package:http_exception/http_exception.dart';
import 'package:http_status/http_status.dart';
import 'package:test/test.dart';

void main() {
  group('HTTP 5XX Exceptions ', () {
    const String stringDetailExpect = "Not found key 'foo' and 'bar' in JSON";
    group('[500 InternalServerErrorHttpException]', () {
      const HttpStatus httpStatus = HttpStatus.internalServerError;
      final int codeHttpStatus = httpStatus.code;
      final String nameHttpStatus = httpStatus.name;
      final TypeMatcher<InternalServerErrorHttpException> isAMatcher =
          isA<InternalServerErrorHttpException>();

      final String stringExpect =
          "HttpException [$codeHttpStatus $nameHttpStatus]: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

      final Map<String, Object> mapExpect = <String, Object>{
        'statusCode': codeHttpStatus,
        'name': nameHttpStatus,
        'detail': stringDetailExpect,
        'uri': 'https://example.org',
        'foo': 'foo value',
        'bar': 'bar value',
      };

      Never throwHttpCustomException() {
        throw InternalServerErrorHttpException(
          detail: "Not found key 'foo' and 'bar' in JSON",
          data: const <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
          uri: Uri.parse('https://example.org'),
        );
      }

      test('should throw with check type test', () {
        expect(throwHttpCustomException, throwsException);
        expect(throwHttpCustomException, throwsA(isA<HttpException>()));
        expect(throwHttpCustomException, throwsA(isAMatcher));
      });
      test('should throw with check toString() test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (InternalServerErrorHttpException x) => x.toString(),
              'toString()',
              contains(stringExpect),
            ),
          ),
        );
        expect(
          throwHttpCustomException,
          throwsA(
            predicate(
              (Object? x) =>
                  x is InternalServerErrorHttpException &&
                  x.toString() == stringExpect,
            ),
          ),
        );
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (InternalServerErrorHttpException x) => x.toString(),
              'toString()',
              stringExpect,
            ),
          ),
        );
      });
      test('should throw with check data test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (InternalServerErrorHttpException x) => x.data,
              'data',
              <String, String>{'foo': 'foo value', 'bar': 'bar value'},
            ),
          ),
        );
      });
      test('should throw with check status test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (InternalServerErrorHttpException x) => x.httpStatus.code,
              'statusCode',
              codeHttpStatus,
            ),
          ),
        );
      });
      test('should throw with check uri test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (InternalServerErrorHttpException x) => x.uri,
              'uri',
              Uri.parse('https://example.org'),
            ),
          ),
        );
      });
      test('should throw with check detail test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (InternalServerErrorHttpException x) => x.detail,
              'detail',
              stringDetailExpect,
            ),
          ),
        );
      });
      test('should throw with check toMap() test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (InternalServerErrorHttpException x) => x.toMap(),
              'toMap()',
              mapExpect,
            ),
          ),
        );
      });
    });

    group('[501 NotImplementedHttpException]', () {
      const HttpStatus httpStatus = HttpStatus.notImplemented;
      final int codeHttpStatus = httpStatus.code;
      final String nameHttpStatus = httpStatus.name;
      final TypeMatcher<NotImplementedHttpException> isAMatcher =
          isA<NotImplementedHttpException>();

      final String stringExpect =
          "HttpException [$codeHttpStatus $nameHttpStatus]: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

      final Map<String, Object> mapExpect = <String, Object>{
        'statusCode': codeHttpStatus,
        'name': nameHttpStatus,
        'detail': stringDetailExpect,
        'uri': 'https://example.org',
        'foo': 'foo value',
        'bar': 'bar value',
      };

      Never throwHttpCustomException() {
        throw NotImplementedHttpException(
          detail: "Not found key 'foo' and 'bar' in JSON",
          data: const <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
          uri: Uri.parse('https://example.org'),
        );
      }

      test('should throw with check type test', () {
        expect(throwHttpCustomException, throwsException);
        expect(throwHttpCustomException, throwsA(isA<HttpException>()));
        expect(throwHttpCustomException, throwsA(isAMatcher));
      });
      test('should throw with check toString() test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (NotImplementedHttpException x) => x.toString(),
              'toString()',
              contains(stringExpect),
            ),
          ),
        );
        expect(
          throwHttpCustomException,
          throwsA(
            predicate(
              (Object? x) =>
                  x is NotImplementedHttpException &&
                  x.toString() == stringExpect,
            ),
          ),
        );
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (NotImplementedHttpException x) => x.toString(),
              'toString()',
              stringExpect,
            ),
          ),
        );
      });
      test('should throw with check data test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (NotImplementedHttpException x) => x.data,
              'data',
              <String, String>{'foo': 'foo value', 'bar': 'bar value'},
            ),
          ),
        );
      });
      test('should throw with check status test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (NotImplementedHttpException x) => x.httpStatus.code,
              'statusCode',
              codeHttpStatus,
            ),
          ),
        );
      });
      test('should throw with check uri test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (NotImplementedHttpException x) => x.uri,
              'uri',
              Uri.parse('https://example.org'),
            ),
          ),
        );
      });
      test('should throw with check detail test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (NotImplementedHttpException x) => x.detail,
              'detail',
              stringDetailExpect,
            ),
          ),
        );
      });
      test('should throw with check toMap() test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (NotImplementedHttpException x) => x.toMap(),
              'toMap()',
              mapExpect,
            ),
          ),
        );
      });
    });

    group('[502 BadGatewayHttpException]', () {
      const HttpStatus httpStatus = HttpStatus.badGateway;
      final int codeHttpStatus = httpStatus.code;
      final String nameHttpStatus = httpStatus.name;
      final TypeMatcher<BadGatewayHttpException> isAMatcher =
          isA<BadGatewayHttpException>();

      final String stringExpect =
          "HttpException [$codeHttpStatus $nameHttpStatus]: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

      final Map<String, Object> mapExpect = <String, Object>{
        'statusCode': codeHttpStatus,
        'name': nameHttpStatus,
        'detail': stringDetailExpect,
        'uri': 'https://example.org',
        'foo': 'foo value',
        'bar': 'bar value',
      };

      Never throwHttpCustomException() {
        throw BadGatewayHttpException(
          detail: "Not found key 'foo' and 'bar' in JSON",
          data: const <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
          uri: Uri.parse('https://example.org'),
        );
      }

      test('should throw with check type test', () {
        expect(throwHttpCustomException, throwsException);
        expect(throwHttpCustomException, throwsA(isA<HttpException>()));
        expect(throwHttpCustomException, throwsA(isAMatcher));
      });
      test('should throw with check toString() test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (BadGatewayHttpException x) => x.toString(),
              'toString()',
              contains(stringExpect),
            ),
          ),
        );
        expect(
          throwHttpCustomException,
          throwsA(
            predicate(
              (Object? x) =>
                  x is BadGatewayHttpException && x.toString() == stringExpect,
            ),
          ),
        );
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (BadGatewayHttpException x) => x.toString(),
              'toString()',
              stringExpect,
            ),
          ),
        );
      });
      test('should throw with check data test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (BadGatewayHttpException x) => x.data,
              'data',
              <String, String>{'foo': 'foo value', 'bar': 'bar value'},
            ),
          ),
        );
      });
      test('should throw with check status test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (BadGatewayHttpException x) => x.httpStatus.code,
              'statusCode',
              codeHttpStatus,
            ),
          ),
        );
      });
      test('should throw with check uri test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (BadGatewayHttpException x) => x.uri,
              'uri',
              Uri.parse('https://example.org'),
            ),
          ),
        );
      });
      test('should throw with check detail test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (BadGatewayHttpException x) => x.detail,
              'detail',
              stringDetailExpect,
            ),
          ),
        );
      });
      test('should throw with check toMap() test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (BadGatewayHttpException x) => x.toMap(),
              'toMap()',
              mapExpect,
            ),
          ),
        );
      });
    });

    group('[503 ServiceUnavailableException]', () {
      const HttpStatus httpStatus = HttpStatus.serviceUnavailable;
      final int codeHttpStatus = httpStatus.code;
      final String nameHttpStatus = httpStatus.name;
      final TypeMatcher<ServiceUnavailableHttpException> isAMatcher =
          isA<ServiceUnavailableHttpException>();

      final String stringExpect =
          "HttpException [$codeHttpStatus $nameHttpStatus]: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

      final Map<String, Object> mapExpect = <String, Object>{
        'statusCode': codeHttpStatus,
        'name': nameHttpStatus,
        'detail': stringDetailExpect,
        'uri': 'https://example.org',
        'foo': 'foo value',
        'bar': 'bar value',
      };

      Never throwHttpCustomException() {
        throw ServiceUnavailableHttpException(
          detail: "Not found key 'foo' and 'bar' in JSON",
          data: const <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
          uri: Uri.parse('https://example.org'),
        );
      }

      test('should throw with check type test', () {
        expect(throwHttpCustomException, throwsException);
        expect(throwHttpCustomException, throwsA(isA<HttpException>()));
        expect(throwHttpCustomException, throwsA(isAMatcher));
      });
      test('should throw with check toString() test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (ServiceUnavailableHttpException x) => x.toString(),
              'toString()',
              contains(stringExpect),
            ),
          ),
        );
        expect(
          throwHttpCustomException,
          throwsA(
            predicate(
              (Object? x) =>
                  x is ServiceUnavailableHttpException &&
                  x.toString() == stringExpect,
            ),
          ),
        );
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (ServiceUnavailableHttpException x) => x.toString(),
              'toString()',
              stringExpect,
            ),
          ),
        );
      });
      test('should throw with check data test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (ServiceUnavailableHttpException x) => x.data,
              'data',
              <String, String>{'foo': 'foo value', 'bar': 'bar value'},
            ),
          ),
        );
      });
      test('should throw with check status test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (ServiceUnavailableHttpException x) => x.httpStatus.code,
              'statusCode',
              codeHttpStatus,
            ),
          ),
        );
      });
      test('should throw with check uri test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (ServiceUnavailableHttpException x) => x.uri,
              'uri',
              Uri.parse('https://example.org'),
            ),
          ),
        );
      });
      test('should throw with check detail test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (ServiceUnavailableHttpException x) => x.detail,
              'detail',
              stringDetailExpect,
            ),
          ),
        );
      });
      test('should throw with check toMap() test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (ServiceUnavailableHttpException x) => x.toMap(),
              'toMap()',
              mapExpect,
            ),
          ),
        );
      });
    });

    group('[504 GatewayTimeoutHttpException]', () {
      const HttpStatus httpStatus = HttpStatus.gatewayTimeout;
      final int codeHttpStatus = httpStatus.code;
      final String nameHttpStatus = httpStatus.name;
      final TypeMatcher<GatewayTimeoutHttpException> isAMatcher =
          isA<GatewayTimeoutHttpException>();

      final String stringExpect =
          "HttpException [$codeHttpStatus $nameHttpStatus]: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

      final Map<String, Object> mapExpect = <String, Object>{
        'statusCode': codeHttpStatus,
        'name': nameHttpStatus,
        'detail': stringDetailExpect,
        'uri': 'https://example.org',
        'foo': 'foo value',
        'bar': 'bar value',
      };

      Never throwHttpCustomException() {
        throw GatewayTimeoutHttpException(
          detail: "Not found key 'foo' and 'bar' in JSON",
          data: const <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
          uri: Uri.parse('https://example.org'),
        );
      }

      test('should throw with check type test', () {
        expect(throwHttpCustomException, throwsException);
        expect(throwHttpCustomException, throwsA(isA<HttpException>()));
        expect(throwHttpCustomException, throwsA(isAMatcher));
      });
      test('should throw with check toString() test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (GatewayTimeoutHttpException x) => x.toString(),
              'toString()',
              contains(stringExpect),
            ),
          ),
        );
        expect(
          throwHttpCustomException,
          throwsA(
            predicate(
              (Object? x) =>
                  x is GatewayTimeoutHttpException &&
                  x.toString() == stringExpect,
            ),
          ),
        );
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (GatewayTimeoutHttpException x) => x.toString(),
              'toString()',
              stringExpect,
            ),
          ),
        );
      });
      test('should throw with check data test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (GatewayTimeoutHttpException x) => x.data,
              'data',
              <String, String>{'foo': 'foo value', 'bar': 'bar value'},
            ),
          ),
        );
      });
      test('should throw with check status test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (GatewayTimeoutHttpException x) => x.httpStatus.code,
              'statusCode',
              codeHttpStatus,
            ),
          ),
        );
      });
      test('should throw with check uri test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (GatewayTimeoutHttpException x) => x.uri,
              'uri',
              Uri.parse('https://example.org'),
            ),
          ),
        );
      });
      test('should throw with check detail test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (GatewayTimeoutHttpException x) => x.detail,
              'detail',
              stringDetailExpect,
            ),
          ),
        );
      });
      test('should throw with check toMap() test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (GatewayTimeoutHttpException x) => x.toMap(),
              'toMap()',
              mapExpect,
            ),
          ),
        );
      });
    });

    group('[505 HttpVersionNotSupportedHttpException]', () {
      const HttpStatus httpStatus = HttpStatus.httpVersionNotSupported;
      final int codeHttpStatus = httpStatus.code;
      final String nameHttpStatus = httpStatus.name;
      final TypeMatcher<HttpVersionNotSupportedHttpException> isAMatcher =
          isA<HttpVersionNotSupportedHttpException>();

      final String stringExpect =
          "HttpException [$codeHttpStatus $nameHttpStatus]: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

      final Map<String, Object> mapExpect = <String, Object>{
        'statusCode': codeHttpStatus,
        'name': nameHttpStatus,
        'detail': stringDetailExpect,
        'uri': 'https://example.org',
        'foo': 'foo value',
        'bar': 'bar value',
      };

      Never throwHttpCustomException() {
        throw HttpVersionNotSupportedHttpException(
          detail: "Not found key 'foo' and 'bar' in JSON",
          data: const <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
          uri: Uri.parse('https://example.org'),
        );
      }

      test('should throw with check type test', () {
        expect(throwHttpCustomException, throwsException);
        expect(throwHttpCustomException, throwsA(isA<HttpException>()));
        expect(throwHttpCustomException, throwsA(isAMatcher));
      });
      test('should throw with check toString() test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (HttpVersionNotSupportedHttpException x) => x.toString(),
              'toString()',
              contains(stringExpect),
            ),
          ),
        );
        expect(
          throwHttpCustomException,
          throwsA(
            predicate(
              (Object? x) =>
                  x is HttpVersionNotSupportedHttpException &&
                  x.toString() == stringExpect,
            ),
          ),
        );
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (HttpVersionNotSupportedHttpException x) => x.toString(),
              'toString()',
              stringExpect,
            ),
          ),
        );
      });
      test('should throw with check data test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (HttpVersionNotSupportedHttpException x) => x.data,
              'data',
              <String, String>{'foo': 'foo value', 'bar': 'bar value'},
            ),
          ),
        );
      });
      test('should throw with check status test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (HttpVersionNotSupportedHttpException x) => x.httpStatus.code,
              'statusCode',
              codeHttpStatus,
            ),
          ),
        );
      });
      test('should throw with check uri test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (HttpVersionNotSupportedHttpException x) => x.uri,
              'uri',
              Uri.parse('https://example.org'),
            ),
          ),
        );
      });
      test('should throw with check detail test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (HttpVersionNotSupportedHttpException x) => x.detail,
              'detail',
              stringDetailExpect,
            ),
          ),
        );
      });
      test('should throw with check toMap() test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (HttpVersionNotSupportedHttpException x) => x.toMap(),
              'toMap()',
              mapExpect,
            ),
          ),
        );
      });
    });

    group('[506 VariantAlsoNegotiatesHttpException]', () {
      const HttpStatus httpStatus = HttpStatus.variantAlsoNegotiates;
      final int codeHttpStatus = httpStatus.code;
      final String nameHttpStatus = httpStatus.name;
      final TypeMatcher<VariantAlsoNegotiatesHttpException> isAMatcher =
          isA<VariantAlsoNegotiatesHttpException>();

      final String stringExpect =
          "HttpException [$codeHttpStatus $nameHttpStatus]: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

      final Map<String, Object> mapExpect = <String, Object>{
        'statusCode': codeHttpStatus,
        'name': nameHttpStatus,
        'detail': stringDetailExpect,
        'uri': 'https://example.org',
        'foo': 'foo value',
        'bar': 'bar value',
      };

      Never throwHttpCustomException() {
        throw VariantAlsoNegotiatesHttpException(
          detail: "Not found key 'foo' and 'bar' in JSON",
          data: const <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
          uri: Uri.parse('https://example.org'),
        );
      }

      test('should throw with check type test', () {
        expect(throwHttpCustomException, throwsException);
        expect(throwHttpCustomException, throwsA(isA<HttpException>()));
        expect(throwHttpCustomException, throwsA(isAMatcher));
      });
      test('should throw with check toString() test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (VariantAlsoNegotiatesHttpException x) => x.toString(),
              'toString()',
              contains(stringExpect),
            ),
          ),
        );
        expect(
          throwHttpCustomException,
          throwsA(
            predicate(
              (Object? x) =>
                  x is VariantAlsoNegotiatesHttpException &&
                  x.toString() == stringExpect,
            ),
          ),
        );
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (VariantAlsoNegotiatesHttpException x) => x.toString(),
              'toString()',
              stringExpect,
            ),
          ),
        );
      });
      test('should throw with check data test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (VariantAlsoNegotiatesHttpException x) => x.data,
              'data',
              <String, String>{'foo': 'foo value', 'bar': 'bar value'},
            ),
          ),
        );
      });
      test('should throw with check status test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (VariantAlsoNegotiatesHttpException x) => x.httpStatus.code,
              'statusCode',
              codeHttpStatus,
            ),
          ),
        );
      });
      test('should throw with check uri test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (VariantAlsoNegotiatesHttpException x) => x.uri,
              'uri',
              Uri.parse('https://example.org'),
            ),
          ),
        );
      });
      test('should throw with check detail test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (VariantAlsoNegotiatesHttpException x) => x.detail,
              'detail',
              stringDetailExpect,
            ),
          ),
        );
      });
      test('should throw with check toMap() test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (VariantAlsoNegotiatesHttpException x) => x.toMap(),
              'toMap()',
              mapExpect,
            ),
          ),
        );
      });
    });

    group('[507 InsufficientStorageHttpException]', () {
      const HttpStatus httpStatus = HttpStatus.insufficientStorage;
      final int codeHttpStatus = httpStatus.code;
      final String nameHttpStatus = httpStatus.name;
      final TypeMatcher<InsufficientStorageHttpException> isAMatcher =
          isA<InsufficientStorageHttpException>();

      final String stringExpect =
          "HttpException [$codeHttpStatus $nameHttpStatus]: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

      final Map<String, Object> mapExpect = <String, Object>{
        'statusCode': codeHttpStatus,
        'name': nameHttpStatus,
        'detail': stringDetailExpect,
        'uri': 'https://example.org',
        'foo': 'foo value',
        'bar': 'bar value',
      };

      Never throwHttpCustomException() {
        throw InsufficientStorageHttpException(
          detail: "Not found key 'foo' and 'bar' in JSON",
          data: const <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
          uri: Uri.parse('https://example.org'),
        );
      }

      test('should throw with check type test', () {
        expect(throwHttpCustomException, throwsException);
        expect(throwHttpCustomException, throwsA(isA<HttpException>()));
        expect(throwHttpCustomException, throwsA(isAMatcher));
      });
      test('should throw with check toString() test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (InsufficientStorageHttpException x) => x.toString(),
              'toString()',
              contains(stringExpect),
            ),
          ),
        );
        expect(
          throwHttpCustomException,
          throwsA(
            predicate(
              (Object? x) =>
                  x is InsufficientStorageHttpException &&
                  x.toString() == stringExpect,
            ),
          ),
        );
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (InsufficientStorageHttpException x) => x.toString(),
              'toString()',
              stringExpect,
            ),
          ),
        );
      });
      test('should throw with check data test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (InsufficientStorageHttpException x) => x.data,
              'data',
              <String, String>{'foo': 'foo value', 'bar': 'bar value'},
            ),
          ),
        );
      });
      test('should throw with check status test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (InsufficientStorageHttpException x) => x.httpStatus.code,
              'statusCode',
              codeHttpStatus,
            ),
          ),
        );
      });
      test('should throw with check uri test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (InsufficientStorageHttpException x) => x.uri,
              'uri',
              Uri.parse('https://example.org'),
            ),
          ),
        );
      });
      test('should throw with check detail test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (InsufficientStorageHttpException x) => x.detail,
              'detail',
              stringDetailExpect,
            ),
          ),
        );
      });
      test('should throw with check toMap() test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (InsufficientStorageHttpException x) => x.toMap(),
              'toMap()',
              mapExpect,
            ),
          ),
        );
      });
    });
    group('[508 LoopDetectedHttpException]', () {
      const HttpStatus httpStatus = HttpStatus.loopDetected;
      final int codeHttpStatus = httpStatus.code;
      final String nameHttpStatus = httpStatus.name;
      final TypeMatcher<LoopDetectedHttpException> isAMatcher =
          isA<LoopDetectedHttpException>();

      final String stringExpect =
          "HttpException [$codeHttpStatus $nameHttpStatus]: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

      final Map<String, Object> mapExpect = <String, Object>{
        'statusCode': codeHttpStatus,
        'name': nameHttpStatus,
        'detail': stringDetailExpect,
        'uri': 'https://example.org',
        'foo': 'foo value',
        'bar': 'bar value',
      };

      Never throwHttpCustomException() {
        throw LoopDetectedHttpException(
          detail: "Not found key 'foo' and 'bar' in JSON",
          data: const <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
          uri: Uri.parse('https://example.org'),
        );
      }

      test('should throw with check type test', () {
        expect(throwHttpCustomException, throwsException);
        expect(throwHttpCustomException, throwsA(isA<HttpException>()));
        expect(throwHttpCustomException, throwsA(isAMatcher));
      });
      test('should throw with check toString() test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (LoopDetectedHttpException x) => x.toString(),
              'toString()',
              contains(stringExpect),
            ),
          ),
        );
        expect(
          throwHttpCustomException,
          throwsA(
            predicate(
              (Object? x) =>
                  x is LoopDetectedHttpException &&
                  x.toString() == stringExpect,
            ),
          ),
        );
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (LoopDetectedHttpException x) => x.toString(),
              'toString()',
              stringExpect,
            ),
          ),
        );
      });
      test('should throw with check data test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (LoopDetectedHttpException x) => x.data,
              'data',
              <String, String>{'foo': 'foo value', 'bar': 'bar value'},
            ),
          ),
        );
      });
      test('should throw with check status test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (LoopDetectedHttpException x) => x.httpStatus.code,
              'statusCode',
              codeHttpStatus,
            ),
          ),
        );
      });
      test('should throw with check uri test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (LoopDetectedHttpException x) => x.uri,
              'uri',
              Uri.parse('https://example.org'),
            ),
          ),
        );
      });
      test('should throw with check detail test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (LoopDetectedHttpException x) => x.detail,
              'detail',
              stringDetailExpect,
            ),
          ),
        );
      });
      test('should throw with check toMap() test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (LoopDetectedHttpException x) => x.toMap(),
              'toMap()',
              mapExpect,
            ),
          ),
        );
      });
    });
    group('[510 NotExtendedHttpException]', () {
      const HttpStatus httpStatus = HttpStatus.notExtended;
      final int codeHttpStatus = httpStatus.code;
      final String nameHttpStatus = httpStatus.name;
      final TypeMatcher<NotExtendedHttpException> isAMatcher =
          isA<NotExtendedHttpException>();

      final String stringExpect =
          "HttpException [$codeHttpStatus $nameHttpStatus]: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

      final Map<String, Object> mapExpect = <String, Object>{
        'statusCode': codeHttpStatus,
        'name': nameHttpStatus,
        'detail': stringDetailExpect,
        'uri': 'https://example.org',
        'foo': 'foo value',
        'bar': 'bar value',
      };

      Never throwHttpCustomException() {
        throw NotExtendedHttpException(
          detail: "Not found key 'foo' and 'bar' in JSON",
          data: const <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
          uri: Uri.parse('https://example.org'),
        );
      }

      test('should throw with check type test', () {
        expect(throwHttpCustomException, throwsException);
        expect(throwHttpCustomException, throwsA(isA<HttpException>()));
        expect(throwHttpCustomException, throwsA(isAMatcher));
      });
      test('should throw with check toString() test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (NotExtendedHttpException x) => x.toString(),
              'toString()',
              contains(stringExpect),
            ),
          ),
        );
        expect(
          throwHttpCustomException,
          throwsA(
            predicate(
              (Object? x) =>
                  x is NotExtendedHttpException && x.toString() == stringExpect,
            ),
          ),
        );
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (NotExtendedHttpException x) => x.toString(),
              'toString()',
              stringExpect,
            ),
          ),
        );
      });
      test('should throw with check data test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (NotExtendedHttpException x) => x.data,
              'data',
              <String, String>{'foo': 'foo value', 'bar': 'bar value'},
            ),
          ),
        );
      });
      test('should throw with check status test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (NotExtendedHttpException x) => x.httpStatus.code,
              'statusCode',
              codeHttpStatus,
            ),
          ),
        );
      });
      test('should throw with check uri test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (NotExtendedHttpException x) => x.uri,
              'uri',
              Uri.parse('https://example.org'),
            ),
          ),
        );
      });
      test('should throw with check detail test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (NotExtendedHttpException x) => x.detail,
              'detail',
              stringDetailExpect,
            ),
          ),
        );
      });
      test('should throw with check toMap() test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (NotExtendedHttpException x) => x.toMap(),
              'toMap()',
              mapExpect,
            ),
          ),
        );
      });
    });
    group('[511 NetworkAuthenticationRequiredHttpException]', () {
      const HttpStatus httpStatus = HttpStatus.networkAuthenticationRequired;
      final int codeHttpStatus = httpStatus.code;
      final String nameHttpStatus = httpStatus.name;
      final TypeMatcher<NetworkAuthenticationRequiredHttpException> isAMatcher =
          isA<NetworkAuthenticationRequiredHttpException>();

      final String stringExpect =
          "HttpException [$codeHttpStatus $nameHttpStatus]: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

      final Map<String, Object> mapExpect = <String, Object>{
        'statusCode': codeHttpStatus,
        'name': nameHttpStatus,
        'detail': stringDetailExpect,
        'uri': 'https://example.org',
        'foo': 'foo value',
        'bar': 'bar value',
      };

      Never throwHttpCustomException() {
        throw NetworkAuthenticationRequiredHttpException(
          detail: "Not found key 'foo' and 'bar' in JSON",
          data: const <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
          uri: Uri.parse('https://example.org'),
        );
      }

      test('should throw with check type test', () {
        expect(throwHttpCustomException, throwsException);
        expect(throwHttpCustomException, throwsA(isA<HttpException>()));
        expect(throwHttpCustomException, throwsA(isAMatcher));
      });
      test('should throw with check toString() test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (NetworkAuthenticationRequiredHttpException x) => x.toString(),
              'toString()',
              contains(stringExpect),
            ),
          ),
        );
        expect(
          throwHttpCustomException,
          throwsA(
            predicate(
              (Object? x) =>
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
              (NetworkAuthenticationRequiredHttpException x) => x.data,
              'data',
              <String, String>{'foo': 'foo value', 'bar': 'bar value'},
            ),
          ),
        );
      });
      test('should throw with check status test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (NetworkAuthenticationRequiredHttpException x) =>
                  x.httpStatus.code,
              'statusCode',
              codeHttpStatus,
            ),
          ),
        );
      });
      test('should throw with check uri test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (NetworkAuthenticationRequiredHttpException x) => x.uri,
              'uri',
              Uri.parse('https://example.org'),
            ),
          ),
        );
      });
      test('should throw with check detail test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (NetworkAuthenticationRequiredHttpException x) => x.detail,
              'detail',
              stringDetailExpect,
            ),
          ),
        );
      });
      test('should throw with check toMap() test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (NetworkAuthenticationRequiredHttpException x) => x.toMap(),
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
              (NetworkAuthenticationRequiredHttpException x) => x.toString(),
              'toString()',
              stringExpect,
            ),
          ),
        );
      });
    });
    group('[599 NetworkAuthenticationRequiredHttpException]', () {
      const HttpStatus httpStatus = HttpStatus.networkConnectTimeoutError;
      final int codeHttpStatus = httpStatus.code;
      final String nameHttpStatus = httpStatus.name;
      final TypeMatcher<NetworkConnectTimeoutErrorHttpException> isAMatcher =
          isA<NetworkConnectTimeoutErrorHttpException>();

      final String stringExpect =
          "HttpException [$codeHttpStatus $nameHttpStatus]: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

      final Map<String, Object> mapExpect = <String, Object>{
        'statusCode': codeHttpStatus,
        'name': nameHttpStatus,
        'detail': stringDetailExpect,
        'uri': 'https://example.org',
        'foo': 'foo value',
        'bar': 'bar value',
      };

      Never throwHttpCustomException() {
        throw NetworkConnectTimeoutErrorHttpException(
          detail: "Not found key 'foo' and 'bar' in JSON",
          data: const <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
          uri: Uri.parse('https://example.org'),
        );
      }

      test('should throw with check type test', () {
        expect(throwHttpCustomException, throwsException);
        expect(throwHttpCustomException, throwsA(isA<HttpException>()));
        expect(throwHttpCustomException, throwsA(isAMatcher));
      });
      test('should throw with check toString() test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (NetworkConnectTimeoutErrorHttpException x) => x.toString(),
              'toString()',
              contains(stringExpect),
            ),
          ),
        );
        expect(
          throwHttpCustomException,
          throwsA(
            predicate(
              (Object? x) =>
                  x is NetworkConnectTimeoutErrorHttpException &&
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
              (NetworkConnectTimeoutErrorHttpException x) => x.data,
              'data',
              <String, String>{'foo': 'foo value', 'bar': 'bar value'},
            ),
          ),
        );
      });
      test('should throw with check status test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (NetworkConnectTimeoutErrorHttpException x) => x.httpStatus.code,
              'statusCode',
              codeHttpStatus,
            ),
          ),
        );
      });
      test('should throw with check uri test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (NetworkConnectTimeoutErrorHttpException x) => x.uri,
              'uri',
              Uri.parse('https://example.org'),
            ),
          ),
        );
      });
      test('should throw with check detail test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (NetworkConnectTimeoutErrorHttpException x) => x.detail,
              'detail',
              stringDetailExpect,
            ),
          ),
        );
      });
      test('should throw with check toMap() test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (NetworkConnectTimeoutErrorHttpException x) => x.toMap(),
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
              (NetworkConnectTimeoutErrorHttpException x) => x.toString(),
              'toString()',
              stringExpect,
            ),
          ),
        );
      });
    });
  });
}
