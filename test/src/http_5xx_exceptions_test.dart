import 'package:http_exception/http_exception.dart';
import 'package:http_status/http_status.dart';
import 'package:test/test.dart';

void main() {
  group('HTTP 5XX Exceptions -', () {
    group('500 InternalServerErrorHttpException', () {
      const String stringHttpExpection = 'Internal Server Error';
      final int codeStatusExpect = HttpStatus.internalServerError.code;
      final TypeMatcher<InternalServerErrorHttpException> isAMatcher =
          isA<InternalServerErrorHttpException>();

      Never throwHttpCustomException() {
        throw InternalServerErrorHttpException(
          detail: "Not found key 'foo' and 'bar' in JSON",
          data: const <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
          uri: Uri.parse('https://example.org'),
        );
      }

      final String stringExpect =
          "HttpException Status Code: $codeStatusExpect - $stringHttpExpection: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

      final Map<String, Object> mapExpect = <String, Object>{
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
              (InternalServerErrorHttpException x) => x.toString(),
              'message',
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
              (InternalServerErrorHttpException x) => x.uri,
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
              (InternalServerErrorHttpException x) => x.toMap(),
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
              (InternalServerErrorHttpException x) => x.toString(),
              'toString()',
              stringExpect,
            ),
          ),
        );
      });
    });

    group('501 NotImplementedHttpException', () {
      const String stringHttpExpection = 'Not Implemented';
      final int codeStatusExpect = HttpStatus.notImplemented.code;
      final TypeMatcher<NotImplementedHttpException> isAMatcher =
          isA<NotImplementedHttpException>();

      Never throwHttpCustomException() {
        throw NotImplementedHttpException(
          detail: "Not found key 'foo' and 'bar' in JSON",
          data: const <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
          uri: Uri.parse('https://example.org'),
        );
      }

      final String stringExpect =
          "HttpException Status Code: $codeStatusExpect - $stringHttpExpection: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

      final Map<String, Object> mapExpect = <String, Object>{
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
              (NotImplementedHttpException x) => x.toString(),
              'message',
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
              (NotImplementedHttpException x) => x.uri,
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
              (NotImplementedHttpException x) => x.toMap(),
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
              (NotImplementedHttpException x) => x.toString(),
              'toString()',
              stringExpect,
            ),
          ),
        );
      });
    });

    group('502 BadGatewayHttpException', () {
      const String stringHttpExpection = 'Bad Gateway';
      final int codeStatusExpect = HttpStatus.badGateway.code;
      final TypeMatcher<BadGatewayHttpException> isAMatcher =
          isA<BadGatewayHttpException>();

      Never throwHttpCustomException() {
        throw BadGatewayHttpException(
          detail: "Not found key 'foo' and 'bar' in JSON",
          data: const <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
          uri: Uri.parse('https://example.org'),
        );
      }

      final String stringExpect =
          "HttpException Status Code: $codeStatusExpect - $stringHttpExpection: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

      final Map<String, Object> mapExpect = <String, Object>{
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
              (BadGatewayHttpException x) => x.toString(),
              'message',
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
              (BadGatewayHttpException x) => x.uri,
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
              (BadGatewayHttpException x) => x.toMap(),
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
              (BadGatewayHttpException x) => x.toString(),
              'toString()',
              stringExpect,
            ),
          ),
        );
      });
    });

    group('503 ServiceUnavailableException ', () {
      const String stringHttpExpection = 'Service Unavailable';
      final int codeStatusExpect = HttpStatus.serviceUnavailable.code;
      final TypeMatcher<ServiceUnavailableHttpException> isAMatcher =
          isA<ServiceUnavailableHttpException>();

      Never throwHttpCustomException() {
        throw ServiceUnavailableHttpException(
          detail: "Not found key 'foo' and 'bar' in JSON",
          data: const <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
          uri: Uri.parse('https://example.org'),
        );
      }

      final String stringExpect =
          "HttpException Status Code: $codeStatusExpect - $stringHttpExpection: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

      final Map<String, Object> mapExpect = <String, Object>{
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
              (ServiceUnavailableHttpException x) => x.toString(),
              'message',
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
              (ServiceUnavailableHttpException x) => x.uri,
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
              (ServiceUnavailableHttpException x) => x.toMap(),
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
              (ServiceUnavailableHttpException x) => x.toString(),
              'toString()',
              stringExpect,
            ),
          ),
        );
      });
    });

    group('504 GatewayTimeoutHttpException', () {
      const String stringHttpExpection = 'Gateway Timeout';
      final int codeStatusExpect = HttpStatus.gatewayTimeout.code;
      final TypeMatcher<GatewayTimeoutHttpException> isAMatcher =
          isA<GatewayTimeoutHttpException>();

      Never throwHttpCustomException() {
        throw GatewayTimeoutHttpException(
          detail: "Not found key 'foo' and 'bar' in JSON",
          data: const <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
          uri: Uri.parse('https://example.org'),
        );
      }

      final String stringExpect =
          "HttpException Status Code: $codeStatusExpect - $stringHttpExpection: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

      final Map<String, Object> mapExpect = <String, Object>{
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
              (GatewayTimeoutHttpException x) => x.toString(),
              'message',
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
              (GatewayTimeoutHttpException x) => x.uri,
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
              (GatewayTimeoutHttpException x) => x.toMap(),
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
              (GatewayTimeoutHttpException x) => x.toString(),
              'toString()',
              stringExpect,
            ),
          ),
        );
      });
    });

    group('505 HttpVersionNotSupportedHttpException', () {
      const String stringHttpExpection = 'Http Version Not Supported';
      final int codeStatusExpect = HttpStatus.httpVersionNotSupported.code;
      final TypeMatcher<HttpVersionNotSupportedHttpException> isAMatcher =
          isA<HttpVersionNotSupportedHttpException>();

      Never throwHttpCustomException() {
        throw HttpVersionNotSupportedHttpException(
          detail: "Not found key 'foo' and 'bar' in JSON",
          data: const <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
          uri: Uri.parse('https://example.org'),
        );
      }

      final String stringExpect =
          "HttpException Status Code: $codeStatusExpect - $stringHttpExpection: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

      final Map<String, Object> mapExpect = <String, Object>{
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
              (HttpVersionNotSupportedHttpException x) => x.toString(),
              'message',
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
              (HttpVersionNotSupportedHttpException x) => x.uri,
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
              (HttpVersionNotSupportedHttpException x) => x.toMap(),
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
              (HttpVersionNotSupportedHttpException x) => x.toString(),
              'toString()',
              stringExpect,
            ),
          ),
        );
      });
    });

    group('506 VariantAlsoNegotiatesHttpException', () {
      const String stringHttpExpection = 'Variant Also Negotiates';
      final int codeStatusExpect = HttpStatus.variantAlsoNegotiates.code;
      final TypeMatcher<VariantAlsoNegotiatesHttpException> isAMatcher =
          isA<VariantAlsoNegotiatesHttpException>();

      Never throwHttpCustomException() {
        throw VariantAlsoNegotiatesHttpException(
          detail: "Not found key 'foo' and 'bar' in JSON",
          data: const <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
          uri: Uri.parse('https://example.org'),
        );
      }

      final String stringExpect =
          "HttpException Status Code: $codeStatusExpect - $stringHttpExpection: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

      final Map<String, Object> mapExpect = <String, Object>{
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
              (VariantAlsoNegotiatesHttpException x) => x.toString(),
              'message',
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
              (VariantAlsoNegotiatesHttpException x) => x.uri,
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
              (VariantAlsoNegotiatesHttpException x) => x.toMap(),
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
              (VariantAlsoNegotiatesHttpException x) => x.toString(),
              'toString()',
              stringExpect,
            ),
          ),
        );
      });
    });
    group('507 InsufficientStorageHttpException', () {
      const String stringHttpExpection = 'Insufficient Storage';
      final int codeStatusExpect = HttpStatus.insufficientStorage.code;
      final TypeMatcher<InsufficientStorageHttpException> isAMatcher =
          isA<InsufficientStorageHttpException>();

      Never throwHttpCustomException() {
        throw InsufficientStorageHttpException(
          detail: "Not found key 'foo' and 'bar' in JSON",
          data: const <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
          uri: Uri.parse('https://example.org'),
        );
      }

      final String stringExpect =
          "HttpException Status Code: $codeStatusExpect - $stringHttpExpection: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

      final Map<String, Object> mapExpect = <String, Object>{
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
              (InsufficientStorageHttpException x) => x.toString(),
              'message',
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
              (InsufficientStorageHttpException x) => x.uri,
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
              (InsufficientStorageHttpException x) => x.toMap(),
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
              (InsufficientStorageHttpException x) => x.toString(),
              'toString()',
              stringExpect,
            ),
          ),
        );
      });
    });
    group('508 LoopDetectedHttpException', () {
      const String stringHttpExpection = 'Loop Detected';
      final int codeStatusExpect = HttpStatus.loopDetected.code;
      final TypeMatcher<LoopDetectedHttpException> isAMatcher =
          isA<LoopDetectedHttpException>();

      Never throwHttpCustomException() {
        throw LoopDetectedHttpException(
          detail: "Not found key 'foo' and 'bar' in JSON",
          data: const <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
          uri: Uri.parse('https://example.org'),
        );
      }

      final String stringExpect =
          "HttpException Status Code: $codeStatusExpect - $stringHttpExpection: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

      final Map<String, Object> mapExpect = <String, Object>{
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
              (LoopDetectedHttpException x) => x.toString(),
              'message',
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
              (LoopDetectedHttpException x) => x.uri,
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
              (LoopDetectedHttpException x) => x.toMap(),
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
              (LoopDetectedHttpException x) => x.toString(),
              'toString()',
              stringExpect,
            ),
          ),
        );
      });
    });
    group('510 NotExtendedHttpException', () {
      const String stringHttpExpection = 'Not Extended';
      final int codeStatusExpect = HttpStatus.notExtended.code;
      final TypeMatcher<NotExtendedHttpException> isAMatcher =
          isA<NotExtendedHttpException>();

      Never throwHttpCustomException() {
        throw NotExtendedHttpException(
          detail: "Not found key 'foo' and 'bar' in JSON",
          data: const <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
          uri: Uri.parse('https://example.org'),
        );
      }

      final String stringExpect =
          "HttpException Status Code: $codeStatusExpect - $stringHttpExpection: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

      final Map<String, Object> mapExpect = <String, Object>{
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
              (NotExtendedHttpException x) => x.toString(),
              'message',
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
              (NotExtendedHttpException x) => x.uri,
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
              (NotExtendedHttpException x) => x.toMap(),
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
              (NotExtendedHttpException x) => x.toString(),
              'toString()',
              stringExpect,
            ),
          ),
        );
      });
    });

    group('511 NetworkAuthenticationRequiredHttpException', () {
      const String stringHttpExpection = 'Network Authentication Required';
      final int codeStatusExpect =
          HttpStatus.networkAuthenticationRequired.code;
      final TypeMatcher<NetworkAuthenticationRequiredHttpException> isAMatcher =
          isA<NetworkAuthenticationRequiredHttpException>();

      Never throwHttpCustomException() {
        throw NetworkAuthenticationRequiredHttpException(
          detail: "Not found key 'foo' and 'bar' in JSON",
          data: const <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
          uri: Uri.parse('https://example.org'),
        );
      }

      final String stringExpect =
          "HttpException Status Code: $codeStatusExpect - $stringHttpExpection: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

      final Map<String, Object> mapExpect = <String, Object>{
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
              (NetworkAuthenticationRequiredHttpException x) => x.toString(),
              'message',
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
              (NetworkAuthenticationRequiredHttpException x) => x.uri,
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
  });
  group('599 NetworkAuthenticationRequiredHttpException', () {
    const String stringHttpExpection = 'Network Connect Timeout Error';
    final int codeStatusExpect = HttpStatus.networkConnectTimeoutError.code;
    final TypeMatcher<NetworkConnectTimeoutErrorHttpException> isAMatcher =
        isA<NetworkConnectTimeoutErrorHttpException>();

    Never throwHttpCustomException() {
      throw NetworkConnectTimeoutErrorHttpException(
        detail: "Not found key 'foo' and 'bar' in JSON",
        data: const <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
        uri: Uri.parse('https://example.org'),
      );
    }

    final String stringExpect =
        "HttpException Status Code: $codeStatusExpect - $stringHttpExpection: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

    final Map<String, Object> mapExpect = <String, Object>{
      'httpStatusCode': codeStatusExpect,
      'message': "$stringHttpExpection: Not found key 'foo' and 'bar' in JSON",
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
            (NetworkConnectTimeoutErrorHttpException x) => x.toString(),
            'message',
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
            (NetworkConnectTimeoutErrorHttpException x) => x.uri,
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
}
