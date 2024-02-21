import 'package:http_exception/http_exception.dart';
import 'package:http_status/http_status.dart';
import 'package:test/test.dart';

void main() {
  group('HTTP 4XX Exceptions', () {
    group('- 400 BadRequestHttpException', () {
      const stringExpect =
          "HttpException Status 400 - Bad Request: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

      final codeStatusExpect = HttpStatus.badRequest.code;

      final mapExpect = {
        'httpStatusCode': codeStatusExpect,
        'message': "Bad Request: Not found key 'foo' and 'bar' in JSON",
        'uri': Uri.parse('https://example.org'),
        'foo': 'foo value',
        'bar': 'bar value',
      };

      Never throwHttpCustomException() {
        throw BadRequestHttpException(
          detail: "Not found key 'foo' and 'bar' in JSON",
          data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
          uri: Uri.parse('https://example.org'),
        );
      }

      test('should throw with check type test', () {
        expect(throwHttpCustomException, throwsException);
        expect(throwHttpCustomException, throwsA(isA<HttpException>()));
        expect(
          throwHttpCustomException,
          throwsA(isA<BadRequestHttpException>()),
        );
      });
      test('should throw with check message test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isA<BadRequestHttpException>().having(
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
                  x is BadRequestHttpException && x.toString() == stringExpect,
            ),
          ),
        );
      });
      test('should throw with check data test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isA<BadRequestHttpException>().having(
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
            isA<BadRequestHttpException>().having(
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
            isA<BadRequestHttpException>().having(
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
            isA<BadRequestHttpException>().having(
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
            isA<BadRequestHttpException>().having(
              (x) => x.toString(),
              'toString()',
              stringExpect,
            ),
          ),
        );
      });
    });

    group('- 401 UnauthorizedHttpException', () {
      const stringExpect =
          "HttpException Status 401 - Unauthorized: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

      final codeStatusExpect = HttpStatus.unauthorized.code;

      final mapExpect = {
        'httpStatusCode': codeStatusExpect,
        'message': "Unauthorized: Not found key 'foo' and 'bar' in JSON",
        'uri': Uri.parse('https://example.org'),
        'foo': 'foo value',
        'bar': 'bar value',
      };

      Never throwHttpCustomException() {
        throw UnauthorizedHttpException(
          detail: "Not found key 'foo' and 'bar' in JSON",
          data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
          uri: Uri.parse('https://example.org'),
        );
      }

      test('should throw with check type test', () {
        expect(throwHttpCustomException, throwsException);
        expect(throwHttpCustomException, throwsA(isA<HttpException>()));
        expect(
          throwHttpCustomException,
          throwsA(isA<UnauthorizedHttpException>()),
        );
      });
      test('should throw with check message test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isA<UnauthorizedHttpException>().having(
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
                  x is UnauthorizedHttpException &&
                  x.toString() == stringExpect,
            ),
          ),
        );
      });
      test('should throw with check data test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isA<UnauthorizedHttpException>().having(
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
            isA<UnauthorizedHttpException>().having(
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
            isA<UnauthorizedHttpException>().having(
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
            isA<UnauthorizedHttpException>().having(
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
            isA<UnauthorizedHttpException>().having(
              (x) => x.toString(),
              'toString()',
              stringExpect,
            ),
          ),
        );
      });
    });

    group('- 402 PaymentRequiredHttpException', () {
      const stringExpect =
          "HttpException Status 402 - Payment Required: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

      final codeStatusExpect = HttpStatus.paymentRequired.code;

      final mapExpect = {
        'httpStatusCode': codeStatusExpect,
        'message': "Payment Required: Not found key 'foo' and 'bar' in JSON",
        'uri': Uri.parse('https://example.org'),
        'foo': 'foo value',
        'bar': 'bar value',
      };

      Never throwHttpCustomException() {
        throw PaymentRequiredHttpException(
          detail: "Not found key 'foo' and 'bar' in JSON",
          data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
          uri: Uri.parse('https://example.org'),
        );
      }

      test('should throw with check type test', () {
        expect(throwHttpCustomException, throwsException);
        expect(throwHttpCustomException, throwsA(isA<HttpException>()));
        expect(
          throwHttpCustomException,
          throwsA(isA<PaymentRequiredHttpException>()),
        );
      });
      test('should throw with check message test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isA<PaymentRequiredHttpException>().having(
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
                  x is PaymentRequiredHttpException &&
                  x.toString() == stringExpect,
            ),
          ),
        );
      });
      test('should throw with check data test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isA<PaymentRequiredHttpException>().having(
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
            isA<PaymentRequiredHttpException>().having(
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
            isA<PaymentRequiredHttpException>().having(
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
            isA<PaymentRequiredHttpException>().having(
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
            isA<PaymentRequiredHttpException>().having(
              (x) => x.toString(),
              'toString()',
              stringExpect,
            ),
          ),
        );
      });
    });

    group('- 403 ForbiddenHttpException', () {
      const stringExpect =
          "HttpException Status 403 - Forbidden: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

      final codeStatusExpect = HttpStatus.forbidden.code;

      final mapExpect = {
        'httpStatusCode': codeStatusExpect,
        'message': "Forbidden: Not found key 'foo' and 'bar' in JSON",
        'uri': Uri.parse('https://example.org'),
        'foo': 'foo value',
        'bar': 'bar value',
      };

      Never throwHttpCustomException() {
        throw ForbiddenHttpException(
          detail: "Not found key 'foo' and 'bar' in JSON",
          data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
          uri: Uri.parse('https://example.org'),
        );
      }

      test('should throw with check type test', () {
        expect(throwHttpCustomException, throwsException);
        expect(throwHttpCustomException, throwsA(isA<HttpException>()));
        expect(
          throwHttpCustomException,
          throwsA(isA<ForbiddenHttpException>()),
        );
      });
      test('should throw with check message test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isA<ForbiddenHttpException>().having(
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
                  x is ForbiddenHttpException && x.toString() == stringExpect,
            ),
          ),
        );
      });
      test('should throw with check data test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isA<ForbiddenHttpException>().having(
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
            isA<ForbiddenHttpException>().having(
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
            isA<ForbiddenHttpException>().having(
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
            isA<ForbiddenHttpException>().having(
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
            isA<ForbiddenHttpException>().having(
              (x) => x.toString(),
              'toString()',
              stringExpect,
            ),
          ),
        );
      });
    });

    group('- 404 NotFoundHttpException', () {
      const stringExpect =
          "HttpException Status 404 - Not Found: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

      final codeStatusExpect = HttpStatus.notFound.code;

      final mapExpect = {
        'httpStatusCode': codeStatusExpect,
        'message': "Not Found: Not found key 'foo' and 'bar' in JSON",
        'uri': Uri.parse('https://example.org'),
        'foo': 'foo value',
        'bar': 'bar value',
      };

      Never throwHttpCustomException() {
        throw NotFoundHttpException(
          detail: "Not found key 'foo' and 'bar' in JSON",
          data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
          uri: Uri.parse('https://example.org'),
        );
      }

      test('should throw with check type test', () {
        expect(throwHttpCustomException, throwsException);
        expect(throwHttpCustomException, throwsA(isA<HttpException>()));
        expect(throwHttpCustomException, throwsA(isA<NotFoundHttpException>()));
      });
      test('should throw with check message test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isA<NotFoundHttpException>().having(
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
              (x) => x is NotFoundHttpException && x.toString() == stringExpect,
            ),
          ),
        );
      });
      test('should throw with check data test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isA<NotFoundHttpException>().having(
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
            isA<NotFoundHttpException>().having(
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
            isA<NotFoundHttpException>().having(
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
            isA<NotFoundHttpException>().having(
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
            isA<NotFoundHttpException>().having(
              (x) => x.toString(),
              'toString()',
              stringExpect,
            ),
          ),
        );
      });
    });

    group('- 405 MethodNotAllowedHttpException', () {
      const stringExpect =
          "HttpException Status 405 - Method Not Allowed: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

      final codeStatusExpect = HttpStatus.methodNotAllowed.code;

      final mapExpect = {
        'httpStatusCode': codeStatusExpect,
        'message': "Method Not Allowed: Not found key 'foo' and 'bar' in JSON",
        'uri': Uri.parse('https://example.org'),
        'foo': 'foo value',
        'bar': 'bar value',
      };

      Never throwHttpCustomException() {
        throw MethodNotAllowedHttpException(
          detail: "Not found key 'foo' and 'bar' in JSON",
          data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
          uri: Uri.parse('https://example.org'),
        );
      }

      test('should throw with check type test', () {
        expect(throwHttpCustomException, throwsException);
        expect(throwHttpCustomException, throwsA(isA<HttpException>()));
        expect(
          throwHttpCustomException,
          throwsA(isA<MethodNotAllowedHttpException>()),
        );
      });
      test('should throw with check message test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isA<MethodNotAllowedHttpException>().having(
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
                  x is MethodNotAllowedHttpException &&
                  x.toString() == stringExpect,
            ),
          ),
        );
      });
      test('should throw with check data test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isA<MethodNotAllowedHttpException>().having(
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
            isA<MethodNotAllowedHttpException>().having(
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
            isA<MethodNotAllowedHttpException>().having(
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
            isA<MethodNotAllowedHttpException>().having(
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
            isA<MethodNotAllowedHttpException>().having(
              (x) => x.toString(),
              'toString()',
              stringExpect,
            ),
          ),
        );
      });
    });

    group('- 406 NotAcceptableHttpException', () {
      const stringHttpExpection = 'Not Acceptable';
      final codeStatusExpect = HttpStatus.notAcceptable.code;
      final isAMatcher = isA<NotAcceptableHttpException>();

      Never throwHttpCustomException() {
        throw NotAcceptableHttpException(
          detail: "Not found key 'foo' and 'bar' in JSON",
          data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
          uri: Uri.parse('https://example.org'),
        );
      }

      final stringExpect =
          "HttpException Status $codeStatusExpect - $stringHttpExpection: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

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
                  x is NotAcceptableHttpException &&
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

    group('- 407 ProxyAuthenticationRequiredHttpException', () {
      const stringHttpExpection = 'Proxy Authentication Required';
      final codeStatusExpect = HttpStatus.proxyAuthenticationRequired.code;
      final isAMatcher = isA<ProxyAuthenticationRequiredHttpException>();

      Never throwHttpCustomException() {
        throw ProxyAuthenticationRequiredHttpException(
          detail: "Not found key 'foo' and 'bar' in JSON",
          data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
          uri: Uri.parse('https://example.org'),
        );
      }

      final stringExpect =
          "HttpException Status $codeStatusExpect - $stringHttpExpection: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

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
                  x is ProxyAuthenticationRequiredHttpException &&
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

    group('- 408 RequestTimeoutHttpException', () {
      const stringHttpExpection = 'Request Timeout';
      final codeStatusExpect = HttpStatus.requestTimeout.code;
      final isAMatcher = isA<RequestTimeoutHttpException>();

      Never throwHttpCustomException() {
        throw RequestTimeoutHttpException(
          detail: "Not found key 'foo' and 'bar' in JSON",
          data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
          uri: Uri.parse('https://example.org'),
        );
      }

      final stringExpect =
          "HttpException Status $codeStatusExpect - $stringHttpExpection: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

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
                  x is RequestTimeoutHttpException &&
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

    group('- 409 ConflictHttpException', () {
      const stringHttpExpection = 'Conflict';
      final codeStatusExpect = HttpStatus.conflict.code;
      final isAMatcher = isA<ConflictHttpException>();

      Never throwHttpCustomException() {
        throw ConflictHttpException(
          detail: "Not found key 'foo' and 'bar' in JSON",
          data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
          uri: Uri.parse('https://example.org'),
        );
      }

      final stringExpect =
          "HttpException Status $codeStatusExpect - $stringHttpExpection: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

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
              (x) => x is ConflictHttpException && x.toString() == stringExpect,
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

    group('- 410 GoneHttpException', () {
      const stringHttpExpection = 'Gone';
      final codeStatusExpect = HttpStatus.gone.code;
      final isAMatcher = isA<GoneHttpException>();

      Never throwHttpCustomException() {
        throw GoneHttpException(
          detail: "Not found key 'foo' and 'bar' in JSON",
          data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
          uri: Uri.parse('https://example.org'),
        );
      }

      final stringExpect =
          "HttpException Status $codeStatusExpect - $stringHttpExpection: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

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
              (x) => x is GoneHttpException && x.toString() == stringExpect,
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

    group('- 411 LengthRequiredHttpException', () {
      const stringHttpExpection = 'Length Required';
      final codeStatusExpect = HttpStatus.lengthRequired.code;
      final isAMatcher = isA<LengthRequiredHttpException>();

      Never throwHttpCustomException() {
        throw LengthRequiredHttpException(
          detail: "Not found key 'foo' and 'bar' in JSON",
          data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
          uri: Uri.parse('https://example.org'),
        );
      }

      final stringExpect =
          "HttpException Status $codeStatusExpect - $stringHttpExpection: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

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
                  x is LengthRequiredHttpException &&
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

    group('- 412 PreconditionFailedHttpException', () {
      const stringHttpExpection = 'Precondition Failed';
      final codeStatusExpect = HttpStatus.preconditionFailed.code;
      final isAMatcher = isA<PreconditionFailedHttpException>();

      Never throwHttpCustomException() {
        throw PreconditionFailedHttpException(
          detail: "Not found key 'foo' and 'bar' in JSON",
          data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
          uri: Uri.parse('https://example.org'),
        );
      }

      final stringExpect =
          "HttpException Status $codeStatusExpect - $stringHttpExpection: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

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
                  x is PreconditionFailedHttpException &&
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

    group('- 413 RequestEntityTooLargeHttpException', () {
      const stringHttpExpection = 'Request Entity Too Long';
      final codeStatusExpect = HttpStatus.requestEntityTooLarge.code;
      final isAMatcher = isA<RequestEntityTooLargeHttpException>();

      Never throwHttpCustomException() {
        throw RequestEntityTooLargeHttpException(
          detail: "Not found key 'foo' and 'bar' in JSON",
          data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
          uri: Uri.parse('https://example.org'),
        );
      }

      final stringExpect =
          "HttpException Status $codeStatusExpect - $stringHttpExpection: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

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
                  x is RequestEntityTooLargeHttpException &&
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

    group('- 414 RequestUriTooLongHttpException', () {
      const stringHttpExpection = 'Request Uri Too Long';
      final codeStatusExpect = HttpStatus.requestUriTooLong.code;
      final isAMatcher = isA<RequestUriTooLongHttpException>();

      Never throwHttpCustomException() {
        throw RequestUriTooLongHttpException(
          detail: "Not found key 'foo' and 'bar' in JSON",
          data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
          uri: Uri.parse('https://example.org'),
        );
      }

      final stringExpect =
          "HttpException Status $codeStatusExpect - $stringHttpExpection: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

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
                  x is RequestUriTooLongHttpException &&
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

    group('- 415 UnsupportedMediaTypeHttpException', () {
      const stringHttpExpection = 'Unsupported Media Type';
      final codeStatusExpect = HttpStatus.unsupportedMediaType.code;
      final isAMatcher = isA<UnsupportedMediaTypeHttpException>();

      Never throwHttpCustomException() {
        throw UnsupportedMediaTypeHttpException(
          detail: "Not found key 'foo' and 'bar' in JSON",
          data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
          uri: Uri.parse('https://example.org'),
        );
      }

      final stringExpect =
          "HttpException Status $codeStatusExpect - $stringHttpExpection: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

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
                  x is UnsupportedMediaTypeHttpException &&
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

    group('- 416 RequestedRangeNotSatisfiableHttpException', () {
      const stringHttpExpection = 'Requested Range Not Satisfiable';
      final codeStatusExpect = HttpStatus.requestedRangeNotSatisfiable.code;
      final isAMatcher = isA<RequestedRangeNotSatisfiableHttpException>();

      Never throwHttpCustomException() {
        throw RequestedRangeNotSatisfiableHttpException(
          detail: "Not found key 'foo' and 'bar' in JSON",
          data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
          uri: Uri.parse('https://example.org'),
        );
      }

      final stringExpect =
          "HttpException Status $codeStatusExpect - $stringHttpExpection: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

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
                  x is RequestedRangeNotSatisfiableHttpException &&
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

    group('- 417 ExpectationFailedHttpException', () {
      const stringHttpExpection = 'Expectation Failed';
      final codeStatusExpect = HttpStatus.expectationFailed.code;
      final isAMatcher = isA<ExpectationFailedHttpException>();

      Never throwHttpCustomException() {
        throw ExpectationFailedHttpException(
          detail: "Not found key 'foo' and 'bar' in JSON",
          data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
          uri: Uri.parse('https://example.org'),
        );
      }

      final stringExpect =
          "HttpException Status $codeStatusExpect - $stringHttpExpection: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

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
                  x is ExpectationFailedHttpException &&
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

    group('- 418 ImATeapotHttpException', () {
      const stringHttpExpection = "I'm A Teapot";
      final codeStatusExpect = HttpStatus.imATeapot.code;
      final isAMatcher = isA<ImATeapotHttpException>();

      Never throwHttpCustomException() {
        throw ImATeapotHttpException(
          detail: "Not found key 'foo' and 'bar' in JSON",
          data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
          uri: Uri.parse('https://example.org'),
        );
      }

      final stringExpect =
          "HttpException Status $codeStatusExpect - $stringHttpExpection: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

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
                  x is ImATeapotHttpException && x.toString() == stringExpect,
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

    group('- 419 InsufficientSpaceOnResourceHttpException', () {
      const stringHttpExpection = 'Insufficient Space On Resource';
      final codeStatusExpect = HttpStatus.insufficientSpaceOnResource.code;
      final isAMatcher = isA<InsufficientSpaceOnResourceHttpException>();

      Never throwHttpCustomException() {
        throw InsufficientSpaceOnResourceHttpException(
          detail: "Not found key 'foo' and 'bar' in JSON",
          data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
          uri: Uri.parse('https://example.org'),
        );
      }

      final stringExpect =
          "HttpException Status $codeStatusExpect - $stringHttpExpection: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

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
                  x is InsufficientSpaceOnResourceHttpException &&
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

    group('- 420 MethodFailureHttpException', () {
      const stringHttpExpection = 'Method Failure';
      final codeStatusExpect = HttpStatus.methodFailure.code;
      final isAMatcher = isA<MethodFailureHttpException>();

      Never throwHttpCustomException() {
        throw MethodFailureHttpException(
          detail: "Not found key 'foo' and 'bar' in JSON",
          data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
          uri: Uri.parse('https://example.org'),
        );
      }

      final stringExpect =
          "HttpException Status $codeStatusExpect - $stringHttpExpection: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

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
                  x is MethodFailureHttpException &&
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

    group('- 421 MisdirectedRequestHttpException', () {
      const stringHttpExpection = 'Misdirected Request';
      final codeStatusExpect = HttpStatus.misdirectedRequest.code;
      final isAMatcher = isA<MisdirectedRequestHttpException>();

      Never throwHttpCustomException() {
        throw MisdirectedRequestHttpException(
          detail: "Not found key 'foo' and 'bar' in JSON",
          data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
          uri: Uri.parse('https://example.org'),
        );
      }

      final stringExpect =
          "HttpException Status $codeStatusExpect - $stringHttpExpection: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

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
                  x is MisdirectedRequestHttpException &&
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

    group('- 422 UnprocessableEntityHttpException', () {
      const stringHttpExpection = 'Unprocessable Entity';
      final codeStatusExpect = HttpStatus.unprocessableEntity.code;
      final isAMatcher = isA<UnprocessableEntityHttpException>();

      Never throwHttpCustomException() {
        throw UnprocessableEntityHttpException(
          detail: "Not found key 'foo' and 'bar' in JSON",
          data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
          uri: Uri.parse('https://example.org'),
        );
      }

      final stringExpect =
          "HttpException Status $codeStatusExpect - $stringHttpExpection: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

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
                  x is UnprocessableEntityHttpException &&
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

    group('- 423 LockedHttpException', () {
      const stringHttpExpection = 'Locked';
      final codeStatusExpect = HttpStatus.locked.code;
      final isAMatcher = isA<LockedHttpException>();

      Never throwHttpCustomException() {
        throw LockedHttpException(
          detail: "Not found key 'foo' and 'bar' in JSON",
          data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
          uri: Uri.parse('https://example.org'),
        );
      }

      final stringExpect =
          "HttpException Status $codeStatusExpect - $stringHttpExpection: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

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
              (x) => x is LockedHttpException && x.toString() == stringExpect,
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

    group('- 424 FailedDependencyHttpException', () {
      const stringHttpExpection = 'Failed Dependency';
      final codeStatusExpect = HttpStatus.failedDependency.code;
      final isAMatcher = isA<FailedDependencyHttpException>();

      Never throwHttpCustomException() {
        throw FailedDependencyHttpException(
          detail: "Not found key 'foo' and 'bar' in JSON",
          data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
          uri: Uri.parse('https://example.org'),
        );
      }

      final stringExpect =
          "HttpException Status $codeStatusExpect - $stringHttpExpection: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

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
                  x is FailedDependencyHttpException &&
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

    group('- 426 UpgradeRequiredHttpException', () {
      const stringHttpExpection = 'Upgrade Required';
      final codeStatusExpect = HttpStatus.upgradeRequired.code;
      final isAMatcher = isA<UpgradeRequiredHttpException>();

      Never throwHttpCustomException() {
        throw UpgradeRequiredHttpException(
          detail: "Not found key 'foo' and 'bar' in JSON",
          data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
          uri: Uri.parse('https://example.org'),
        );
      }

      final stringExpect =
          "HttpException Status $codeStatusExpect - $stringHttpExpection: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

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
                  x is UpgradeRequiredHttpException &&
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

    group('- 428 PreconditionRequiredHttpException', () {
      const stringHttpExpection = 'Precondition Required';
      final codeStatusExpect = HttpStatus.preconditionRequired.code;
      final isAMatcher = isA<PreconditionRequiredHttpException>();

      Never throwHttpCustomException() {
        throw PreconditionRequiredHttpException(
          detail: "Not found key 'foo' and 'bar' in JSON",
          data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
          uri: Uri.parse('https://example.org'),
        );
      }

      final stringExpect =
          "HttpException Status $codeStatusExpect - $stringHttpExpection: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

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
                  x is PreconditionRequiredHttpException &&
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

    group('- 429 TooManyRequestsHttpException', () {
      const stringHttpExpection = 'Too Many Requests';
      final codeStatusExpect = HttpStatus.tooManyRequests.code;
      final isAMatcher = isA<TooManyRequestsHttpException>();

      Never throwHttpCustomException() {
        throw TooManyRequestsHttpException(
          detail: "Not found key 'foo' and 'bar' in JSON",
          data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
          uri: Uri.parse('https://example.org'),
        );
      }

      final stringExpect =
          "HttpException Status $codeStatusExpect - $stringHttpExpection: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

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
                  x is TooManyRequestsHttpException &&
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

    group('- 431 RequestHeaderFieldsTooLargeHttpException', () {
      const stringHttpExpection = 'Request Header Fields Too Large';
      final codeStatusExpect = HttpStatus.requestHeaderFieldsTooLarge.code;
      final isAMatcher = isA<RequestHeaderFieldsTooLargeHttpException>();

      Never throwHttpCustomException() {
        throw RequestHeaderFieldsTooLargeHttpException(
          detail: "Not found key 'foo' and 'bar' in JSON",
          data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
          uri: Uri.parse('https://example.org'),
        );
      }

      final stringExpect =
          "HttpException Status $codeStatusExpect - $stringHttpExpection: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

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
                  x is RequestHeaderFieldsTooLargeHttpException &&
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

    group('- 444 ConnectionClosedWithoutResponseHttpException', () {
      const stringHttpExpection = 'Connection Closed Without Response';
      final codeStatusExpect = HttpStatus.connectionClosedWithoutResponse.code;
      final isAMatcher = isA<ConnectionClosedWithoutResponseHttpException>();

      Never throwHttpCustomException() {
        throw ConnectionClosedWithoutResponseHttpException(
          detail: "Not found key 'foo' and 'bar' in JSON",
          data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
          uri: Uri.parse('https://example.org'),
        );
      }

      final stringExpect =
          "HttpException Status $codeStatusExpect - $stringHttpExpection: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

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
                  x is ConnectionClosedWithoutResponseHttpException &&
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

    group('- 451 UnavailableForLegalReasonsHttpException', () {
      const stringHttpExpection = 'Unavailable For Legal Reasons';
      final codeStatusExpect = HttpStatus.unavailableForLegalReasons.code;
      final isAMatcher = isA<UnavailableForLegalReasonsHttpException>();

      Never throwHttpCustomException() {
        throw UnavailableForLegalReasonsHttpException(
          detail: "Not found key 'foo' and 'bar' in JSON",
          data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
          uri: Uri.parse('https://example.org'),
        );
      }

      final stringExpect =
          "HttpException Status $codeStatusExpect - $stringHttpExpection: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

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
                  x is UnavailableForLegalReasonsHttpException &&
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

    group('- 499 ClientClosedRequestHttpException', () {
      const stringHttpExpection = 'Client Closed Request';
      final codeStatusExpect = HttpStatus.clientClosedRequest.code;
      final isAMatcher = isA<ClientClosedRequestHttpException>();

      Never throwHttpCustomException() {
        throw ClientClosedRequestHttpException(
          detail: "Not found key 'foo' and 'bar' in JSON",
          data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
          uri: Uri.parse('https://example.org'),
        );
      }

      final stringExpect =
          "HttpException Status $codeStatusExpect - $stringHttpExpection: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

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
                  x is ClientClosedRequestHttpException &&
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
