import 'package:http_exception/http_exception.dart';
import 'package:http_status/http_status.dart';
import 'package:test/test.dart';

void main() {
  group('HTTP 4XX Exceptions', () {
    group('- 400 BadRequestHttpException', () {
      const String stringExpect =
          "HttpException Status 400 - Bad Request: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

      final int codeStatusExpect = HttpStatus.badRequest.code;

      final Map<String, Object> mapExpect = <String, Object>{
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
              (BadRequestHttpException x) => x.toString(),
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
              (BadRequestHttpException x) => x.data,
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
            isA<BadRequestHttpException>().having(
              (BadRequestHttpException x) => x.httpStatus.code,
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
              (BadRequestHttpException x) => x.uri,
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
              (BadRequestHttpException x) => x.toMap(),
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
              (BadRequestHttpException x) => x.toString(),
              'toString()',
              stringExpect,
            ),
          ),
        );
      });
    });

    group('- 401 UnauthorizedHttpException', () {
      const String stringExpect =
          "HttpException Status 401 - Unauthorized: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

      final int codeStatusExpect = HttpStatus.unauthorized.code;

      final Map<String, Object> mapExpect = <String, Object>{
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
              (UnauthorizedHttpException x) => x.toString(),
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
              (UnauthorizedHttpException x) => x.data,
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
            isA<UnauthorizedHttpException>().having(
              (UnauthorizedHttpException x) => x.httpStatus.code,
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
              (UnauthorizedHttpException x) => x.uri,
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
              (UnauthorizedHttpException x) => x.toMap(),
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
              (UnauthorizedHttpException x) => x.toString(),
              'toString()',
              stringExpect,
            ),
          ),
        );
      });
    });

    group('- 402 PaymentRequiredHttpException', () {
      const String stringExpect =
          "HttpException Status 402 - Payment Required: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

      final int codeStatusExpect = HttpStatus.paymentRequired.code;

      final Map<String, Object> mapExpect = <String, Object>{
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
              (PaymentRequiredHttpException x) => x.toString(),
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
              (PaymentRequiredHttpException x) => x.data,
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
            isA<PaymentRequiredHttpException>().having(
              (PaymentRequiredHttpException x) => x.httpStatus.code,
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
              (PaymentRequiredHttpException x) => x.uri,
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
              (PaymentRequiredHttpException x) => x.toMap(),
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
              (PaymentRequiredHttpException x) => x.toString(),
              'toString()',
              stringExpect,
            ),
          ),
        );
      });
    });

    group('- 403 ForbiddenHttpException', () {
      const String stringExpect =
          "HttpException Status 403 - Forbidden: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

      final int codeStatusExpect = HttpStatus.forbidden.code;

      final Map<String, Object> mapExpect = <String, Object>{
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
              (ForbiddenHttpException x) => x.toString(),
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
              (ForbiddenHttpException x) => x.data,
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
            isA<ForbiddenHttpException>().having(
              (ForbiddenHttpException x) => x.httpStatus.code,
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
              (ForbiddenHttpException x) => x.uri,
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
              (ForbiddenHttpException x) => x.toMap(),
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
              (ForbiddenHttpException x) => x.toString(),
              'toString()',
              stringExpect,
            ),
          ),
        );
      });
    });

    group('- 404 NotFoundHttpException', () {
      const String stringExpect =
          "HttpException Status 404 - Not Found: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

      final int codeStatusExpect = HttpStatus.notFound.code;

      final Map<String, Object> mapExpect = <String, Object>{
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
              (NotFoundHttpException x) => x.toString(),
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
                  x is NotFoundHttpException && x.toString() == stringExpect,
            ),
          ),
        );
      });
      test('should throw with check data test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isA<NotFoundHttpException>().having(
              (NotFoundHttpException x) => x.data,
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
            isA<NotFoundHttpException>().having(
              (NotFoundHttpException x) => x.httpStatus.code,
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
              (NotFoundHttpException x) => x.uri,
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
              (NotFoundHttpException x) => x.toMap(),
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
              (NotFoundHttpException x) => x.toString(),
              'toString()',
              stringExpect,
            ),
          ),
        );
      });
    });

    group('- 405 MethodNotAllowedHttpException', () {
      const String stringExpect =
          "HttpException Status 405 - Method Not Allowed: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

      final int codeStatusExpect = HttpStatus.methodNotAllowed.code;

      final Map<String, Object> mapExpect = <String, Object>{
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
              (MethodNotAllowedHttpException x) => x.toString(),
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
              (MethodNotAllowedHttpException x) => x.data,
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
            isA<MethodNotAllowedHttpException>().having(
              (MethodNotAllowedHttpException x) => x.httpStatus.code,
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
              (MethodNotAllowedHttpException x) => x.uri,
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
              (MethodNotAllowedHttpException x) => x.toMap(),
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
              (MethodNotAllowedHttpException x) => x.toString(),
              'toString()',
              stringExpect,
            ),
          ),
        );
      });
    });

    group('- 406 NotAcceptableHttpException', () {
      const String stringHttpExpection = 'Not Acceptable';
      final int codeStatusExpect = HttpStatus.notAcceptable.code;
      final TypeMatcher<NotAcceptableHttpException> isAMatcher =
          isA<NotAcceptableHttpException>();

      Never throwHttpCustomException() {
        throw NotAcceptableHttpException(
          detail: "Not found key 'foo' and 'bar' in JSON",
          data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
          uri: Uri.parse('https://example.org'),
        );
      }

      final String stringExpect =
          "HttpException Status $codeStatusExpect - $stringHttpExpection: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

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
              (NotAcceptableHttpException x) => x.toString(),
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
              (NotAcceptableHttpException x) => x.data,
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
              (NotAcceptableHttpException x) => x.httpStatus.code,
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
              (NotAcceptableHttpException x) => x.uri,
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
              (NotAcceptableHttpException x) => x.toMap(),
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
              (NotAcceptableHttpException x) => x.toString(),
              'toString()',
              stringExpect,
            ),
          ),
        );
      });
    });

    group('- 407 ProxyAuthenticationRequiredHttpException', () {
      const String stringHttpExpection = 'Proxy Authentication Required';
      final int codeStatusExpect = HttpStatus.proxyAuthenticationRequired.code;
      final TypeMatcher<ProxyAuthenticationRequiredHttpException> isAMatcher =
          isA<ProxyAuthenticationRequiredHttpException>();

      Never throwHttpCustomException() {
        throw ProxyAuthenticationRequiredHttpException(
          detail: "Not found key 'foo' and 'bar' in JSON",
          data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
          uri: Uri.parse('https://example.org'),
        );
      }

      final String stringExpect =
          "HttpException Status $codeStatusExpect - $stringHttpExpection: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

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
              (ProxyAuthenticationRequiredHttpException x) => x.toString(),
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
              (ProxyAuthenticationRequiredHttpException x) => x.data,
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
              (ProxyAuthenticationRequiredHttpException x) => x.httpStatus.code,
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
              (ProxyAuthenticationRequiredHttpException x) => x.uri,
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
              (ProxyAuthenticationRequiredHttpException x) => x.toMap(),
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
              (ProxyAuthenticationRequiredHttpException x) => x.toString(),
              'toString()',
              stringExpect,
            ),
          ),
        );
      });
    });

    group('- 408 RequestTimeoutHttpException', () {
      const String stringHttpExpection = 'Request Timeout';
      final int codeStatusExpect = HttpStatus.requestTimeout.code;
      final TypeMatcher<RequestTimeoutHttpException> isAMatcher =
          isA<RequestTimeoutHttpException>();

      Never throwHttpCustomException() {
        throw RequestTimeoutHttpException(
          detail: "Not found key 'foo' and 'bar' in JSON",
          data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
          uri: Uri.parse('https://example.org'),
        );
      }

      final String stringExpect =
          "HttpException Status $codeStatusExpect - $stringHttpExpection: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

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
              (RequestTimeoutHttpException x) => x.toString(),
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
              (RequestTimeoutHttpException x) => x.data,
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
              (RequestTimeoutHttpException x) => x.httpStatus.code,
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
              (RequestTimeoutHttpException x) => x.uri,
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
              (RequestTimeoutHttpException x) => x.toMap(),
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
              (RequestTimeoutHttpException x) => x.toString(),
              'toString()',
              stringExpect,
            ),
          ),
        );
      });
    });

    group('- 409 ConflictHttpException', () {
      const String stringHttpExpection = 'Conflict';
      final int codeStatusExpect = HttpStatus.conflict.code;
      final TypeMatcher<ConflictHttpException> isAMatcher =
          isA<ConflictHttpException>();

      Never throwHttpCustomException() {
        throw ConflictHttpException(
          detail: "Not found key 'foo' and 'bar' in JSON",
          data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
          uri: Uri.parse('https://example.org'),
        );
      }

      final String stringExpect =
          "HttpException Status $codeStatusExpect - $stringHttpExpection: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

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
              (ConflictHttpException x) => x.toString(),
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
                  x is ConflictHttpException && x.toString() == stringExpect,
            ),
          ),
        );
      });
      test('should throw with check data test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (ConflictHttpException x) => x.data,
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
              (ConflictHttpException x) => x.httpStatus.code,
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
              (ConflictHttpException x) => x.uri,
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
              (ConflictHttpException x) => x.toMap(),
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
              (ConflictHttpException x) => x.toString(),
              'toString()',
              stringExpect,
            ),
          ),
        );
      });
    });

    group('- 410 GoneHttpException', () {
      const String stringHttpExpection = 'Gone';
      final int codeStatusExpect = HttpStatus.gone.code;
      final TypeMatcher<GoneHttpException> isAMatcher =
          isA<GoneHttpException>();

      Never throwHttpCustomException() {
        throw GoneHttpException(
          detail: "Not found key 'foo' and 'bar' in JSON",
          data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
          uri: Uri.parse('https://example.org'),
        );
      }

      final String stringExpect =
          "HttpException Status $codeStatusExpect - $stringHttpExpection: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

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
              (GoneHttpException x) => x.toString(),
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
                  x is GoneHttpException && x.toString() == stringExpect,
            ),
          ),
        );
      });
      test('should throw with check data test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (GoneHttpException x) => x.data,
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
              (GoneHttpException x) => x.httpStatus.code,
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
              (GoneHttpException x) => x.uri,
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
              (GoneHttpException x) => x.toMap(),
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
              (GoneHttpException x) => x.toString(),
              'toString()',
              stringExpect,
            ),
          ),
        );
      });
    });

    group('- 411 LengthRequiredHttpException', () {
      const String stringHttpExpection = 'Length Required';
      final int codeStatusExpect = HttpStatus.lengthRequired.code;
      final TypeMatcher<LengthRequiredHttpException> isAMatcher =
          isA<LengthRequiredHttpException>();

      Never throwHttpCustomException() {
        throw LengthRequiredHttpException(
          detail: "Not found key 'foo' and 'bar' in JSON",
          data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
          uri: Uri.parse('https://example.org'),
        );
      }

      final String stringExpect =
          "HttpException Status $codeStatusExpect - $stringHttpExpection: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

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
              (LengthRequiredHttpException x) => x.toString(),
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
              (LengthRequiredHttpException x) => x.data,
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
              (LengthRequiredHttpException x) => x.httpStatus.code,
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
              (LengthRequiredHttpException x) => x.uri,
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
              (LengthRequiredHttpException x) => x.toMap(),
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
              (LengthRequiredHttpException x) => x.toString(),
              'toString()',
              stringExpect,
            ),
          ),
        );
      });
    });

    group('- 412 PreconditionFailedHttpException', () {
      const String stringHttpExpection = 'Precondition Failed';
      final int codeStatusExpect = HttpStatus.preconditionFailed.code;
      final TypeMatcher<PreconditionFailedHttpException> isAMatcher =
          isA<PreconditionFailedHttpException>();

      Never throwHttpCustomException() {
        throw PreconditionFailedHttpException(
          detail: "Not found key 'foo' and 'bar' in JSON",
          data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
          uri: Uri.parse('https://example.org'),
        );
      }

      final String stringExpect =
          "HttpException Status $codeStatusExpect - $stringHttpExpection: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

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
              (PreconditionFailedHttpException x) => x.toString(),
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
              (PreconditionFailedHttpException x) => x.data,
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
              (PreconditionFailedHttpException x) => x.httpStatus.code,
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
              (PreconditionFailedHttpException x) => x.uri,
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
              (PreconditionFailedHttpException x) => x.toMap(),
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
              (PreconditionFailedHttpException x) => x.toString(),
              'toString()',
              stringExpect,
            ),
          ),
        );
      });
    });

    group('- 413 RequestEntityTooLargeHttpException', () {
      const String stringHttpExpection = 'Request Entity Too Long';
      final int codeStatusExpect = HttpStatus.requestEntityTooLarge.code;
      final TypeMatcher<RequestEntityTooLargeHttpException> isAMatcher =
          isA<RequestEntityTooLargeHttpException>();

      Never throwHttpCustomException() {
        throw RequestEntityTooLargeHttpException(
          detail: "Not found key 'foo' and 'bar' in JSON",
          data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
          uri: Uri.parse('https://example.org'),
        );
      }

      final String stringExpect =
          "HttpException Status $codeStatusExpect - $stringHttpExpection: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

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
              (RequestEntityTooLargeHttpException x) => x.toString(),
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
              (RequestEntityTooLargeHttpException x) => x.data,
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
              (RequestEntityTooLargeHttpException x) => x.httpStatus.code,
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
              (RequestEntityTooLargeHttpException x) => x.uri,
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
              (RequestEntityTooLargeHttpException x) => x.toMap(),
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
              (RequestEntityTooLargeHttpException x) => x.toString(),
              'toString()',
              stringExpect,
            ),
          ),
        );
      });
    });

    group('- 414 RequestUriTooLongHttpException', () {
      const String stringHttpExpection = 'Request Uri Too Long';
      final int codeStatusExpect = HttpStatus.requestUriTooLong.code;
      final TypeMatcher<RequestUriTooLongHttpException> isAMatcher =
          isA<RequestUriTooLongHttpException>();

      Never throwHttpCustomException() {
        throw RequestUriTooLongHttpException(
          detail: "Not found key 'foo' and 'bar' in JSON",
          data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
          uri: Uri.parse('https://example.org'),
        );
      }

      final String stringExpect =
          "HttpException Status $codeStatusExpect - $stringHttpExpection: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

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
              (RequestUriTooLongHttpException x) => x.toString(),
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
              (RequestUriTooLongHttpException x) => x.data,
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
              (RequestUriTooLongHttpException x) => x.httpStatus.code,
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
              (RequestUriTooLongHttpException x) => x.uri,
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
              (RequestUriTooLongHttpException x) => x.toMap(),
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
              (RequestUriTooLongHttpException x) => x.toString(),
              'toString()',
              stringExpect,
            ),
          ),
        );
      });
    });

    group('- 415 UnsupportedMediaTypeHttpException', () {
      const String stringHttpExpection = 'Unsupported Media Type';
      final int codeStatusExpect = HttpStatus.unsupportedMediaType.code;
      final TypeMatcher<UnsupportedMediaTypeHttpException> isAMatcher =
          isA<UnsupportedMediaTypeHttpException>();

      Never throwHttpCustomException() {
        throw UnsupportedMediaTypeHttpException(
          detail: "Not found key 'foo' and 'bar' in JSON",
          data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
          uri: Uri.parse('https://example.org'),
        );
      }

      final String stringExpect =
          "HttpException Status $codeStatusExpect - $stringHttpExpection: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

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
              (UnsupportedMediaTypeHttpException x) => x.toString(),
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
              (UnsupportedMediaTypeHttpException x) => x.data,
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
              (UnsupportedMediaTypeHttpException x) => x.httpStatus.code,
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
              (UnsupportedMediaTypeHttpException x) => x.uri,
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
              (UnsupportedMediaTypeHttpException x) => x.toMap(),
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
              (UnsupportedMediaTypeHttpException x) => x.toString(),
              'toString()',
              stringExpect,
            ),
          ),
        );
      });
    });

    group('- 416 RequestedRangeNotSatisfiableHttpException', () {
      const String stringHttpExpection = 'Requested Range Not Satisfiable';
      final int codeStatusExpect = HttpStatus.requestedRangeNotSatisfiable.code;
      final TypeMatcher<RequestedRangeNotSatisfiableHttpException> isAMatcher =
          isA<RequestedRangeNotSatisfiableHttpException>();

      Never throwHttpCustomException() {
        throw RequestedRangeNotSatisfiableHttpException(
          detail: "Not found key 'foo' and 'bar' in JSON",
          data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
          uri: Uri.parse('https://example.org'),
        );
      }

      final String stringExpect =
          "HttpException Status $codeStatusExpect - $stringHttpExpection: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

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
              (RequestedRangeNotSatisfiableHttpException x) => x.toString(),
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
              (RequestedRangeNotSatisfiableHttpException x) => x.data,
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
              (RequestedRangeNotSatisfiableHttpException x) =>
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
              (RequestedRangeNotSatisfiableHttpException x) => x.uri,
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
              (RequestedRangeNotSatisfiableHttpException x) => x.toMap(),
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
              (RequestedRangeNotSatisfiableHttpException x) => x.toString(),
              'toString()',
              stringExpect,
            ),
          ),
        );
      });
    });

    group('- 417 ExpectationFailedHttpException', () {
      const String stringHttpExpection = 'Expectation Failed';
      final int codeStatusExpect = HttpStatus.expectationFailed.code;
      final TypeMatcher<ExpectationFailedHttpException> isAMatcher =
          isA<ExpectationFailedHttpException>();

      Never throwHttpCustomException() {
        throw ExpectationFailedHttpException(
          detail: "Not found key 'foo' and 'bar' in JSON",
          data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
          uri: Uri.parse('https://example.org'),
        );
      }

      final String stringExpect =
          "HttpException Status $codeStatusExpect - $stringHttpExpection: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

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
              (ExpectationFailedHttpException x) => x.toString(),
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
              (ExpectationFailedHttpException x) => x.data,
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
              (ExpectationFailedHttpException x) => x.httpStatus.code,
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
              (ExpectationFailedHttpException x) => x.uri,
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
              (ExpectationFailedHttpException x) => x.toMap(),
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
              (ExpectationFailedHttpException x) => x.toString(),
              'toString()',
              stringExpect,
            ),
          ),
        );
      });
    });

    group('- 418 ImATeapotHttpException', () {
      const String stringHttpExpection = "I'm A Teapot";
      final int codeStatusExpect = HttpStatus.imATeapot.code;
      final TypeMatcher<ImATeapotHttpException> isAMatcher =
          isA<ImATeapotHttpException>();

      Never throwHttpCustomException() {
        throw ImATeapotHttpException(
          detail: "Not found key 'foo' and 'bar' in JSON",
          data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
          uri: Uri.parse('https://example.org'),
        );
      }

      final String stringExpect =
          "HttpException Status $codeStatusExpect - $stringHttpExpection: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

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
              (ImATeapotHttpException x) => x.toString(),
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
              (ImATeapotHttpException x) => x.data,
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
              (ImATeapotHttpException x) => x.httpStatus.code,
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
              (ImATeapotHttpException x) => x.uri,
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
              (ImATeapotHttpException x) => x.toMap(),
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
              (ImATeapotHttpException x) => x.toString(),
              'toString()',
              stringExpect,
            ),
          ),
        );
      });
    });

    group('- 419 InsufficientSpaceOnResourceHttpException', () {
      const String stringHttpExpection = 'Insufficient Space On Resource';
      final int codeStatusExpect = HttpStatus.insufficientSpaceOnResource.code;
      final TypeMatcher<InsufficientSpaceOnResourceHttpException> isAMatcher =
          isA<InsufficientSpaceOnResourceHttpException>();

      Never throwHttpCustomException() {
        throw InsufficientSpaceOnResourceHttpException(
          detail: "Not found key 'foo' and 'bar' in JSON",
          data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
          uri: Uri.parse('https://example.org'),
        );
      }

      final String stringExpect =
          "HttpException Status $codeStatusExpect - $stringHttpExpection: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

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
              (InsufficientSpaceOnResourceHttpException x) => x.toString(),
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
              (InsufficientSpaceOnResourceHttpException x) => x.data,
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
              (InsufficientSpaceOnResourceHttpException x) => x.httpStatus.code,
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
              (InsufficientSpaceOnResourceHttpException x) => x.uri,
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
              (InsufficientSpaceOnResourceHttpException x) => x.toMap(),
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
              (InsufficientSpaceOnResourceHttpException x) => x.toString(),
              'toString()',
              stringExpect,
            ),
          ),
        );
      });
    });

    group('- 420 MethodFailureHttpException', () {
      const String stringHttpExpection = 'Method Failure';
      final int codeStatusExpect = HttpStatus.methodFailure.code;
      final TypeMatcher<MethodFailureHttpException> isAMatcher =
          isA<MethodFailureHttpException>();

      Never throwHttpCustomException() {
        throw MethodFailureHttpException(
          detail: "Not found key 'foo' and 'bar' in JSON",
          data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
          uri: Uri.parse('https://example.org'),
        );
      }

      final String stringExpect =
          "HttpException Status $codeStatusExpect - $stringHttpExpection: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

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
              (MethodFailureHttpException x) => x.toString(),
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
              (MethodFailureHttpException x) => x.data,
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
              (MethodFailureHttpException x) => x.httpStatus.code,
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
              (MethodFailureHttpException x) => x.uri,
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
              (MethodFailureHttpException x) => x.toMap(),
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
              (MethodFailureHttpException x) => x.toString(),
              'toString()',
              stringExpect,
            ),
          ),
        );
      });
    });

    group('- 421 MisdirectedRequestHttpException', () {
      const String stringHttpExpection = 'Misdirected Request';
      final int codeStatusExpect = HttpStatus.misdirectedRequest.code;
      final TypeMatcher<MisdirectedRequestHttpException> isAMatcher =
          isA<MisdirectedRequestHttpException>();

      Never throwHttpCustomException() {
        throw MisdirectedRequestHttpException(
          detail: "Not found key 'foo' and 'bar' in JSON",
          data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
          uri: Uri.parse('https://example.org'),
        );
      }

      final String stringExpect =
          "HttpException Status $codeStatusExpect - $stringHttpExpection: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

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
              (MisdirectedRequestHttpException x) => x.toString(),
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
              (MisdirectedRequestHttpException x) => x.data,
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
              (MisdirectedRequestHttpException x) => x.httpStatus.code,
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
              (MisdirectedRequestHttpException x) => x.uri,
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
              (MisdirectedRequestHttpException x) => x.toMap(),
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
              (MisdirectedRequestHttpException x) => x.toString(),
              'toString()',
              stringExpect,
            ),
          ),
        );
      });
    });

    group('- 422 UnprocessableEntityHttpException', () {
      const String stringHttpExpection = 'Unprocessable Entity';
      final int codeStatusExpect = HttpStatus.unprocessableEntity.code;
      final TypeMatcher<UnprocessableEntityHttpException> isAMatcher =
          isA<UnprocessableEntityHttpException>();

      Never throwHttpCustomException() {
        throw UnprocessableEntityHttpException(
          detail: "Not found key 'foo' and 'bar' in JSON",
          data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
          uri: Uri.parse('https://example.org'),
        );
      }

      final String stringExpect =
          "HttpException Status $codeStatusExpect - $stringHttpExpection: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

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
              (UnprocessableEntityHttpException x) => x.toString(),
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
              (UnprocessableEntityHttpException x) => x.data,
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
              (UnprocessableEntityHttpException x) => x.httpStatus.code,
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
              (UnprocessableEntityHttpException x) => x.uri,
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
              (UnprocessableEntityHttpException x) => x.toMap(),
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
              (UnprocessableEntityHttpException x) => x.toString(),
              'toString()',
              stringExpect,
            ),
          ),
        );
      });
    });

    group('- 423 LockedHttpException', () {
      const String stringHttpExpection = 'Locked';
      final int codeStatusExpect = HttpStatus.locked.code;
      final TypeMatcher<LockedHttpException> isAMatcher =
          isA<LockedHttpException>();

      Never throwHttpCustomException() {
        throw LockedHttpException(
          detail: "Not found key 'foo' and 'bar' in JSON",
          data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
          uri: Uri.parse('https://example.org'),
        );
      }

      final String stringExpect =
          "HttpException Status $codeStatusExpect - $stringHttpExpection: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

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
              (LockedHttpException x) => x.toString(),
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
                  x is LockedHttpException && x.toString() == stringExpect,
            ),
          ),
        );
      });
      test('should throw with check data test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (LockedHttpException x) => x.data,
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
              (LockedHttpException x) => x.httpStatus.code,
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
              (LockedHttpException x) => x.uri,
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
              (LockedHttpException x) => x.toMap(),
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
              (LockedHttpException x) => x.toString(),
              'toString()',
              stringExpect,
            ),
          ),
        );
      });
    });

    group('- 424 FailedDependencyHttpException', () {
      const String stringHttpExpection = 'Failed Dependency';
      final int codeStatusExpect = HttpStatus.failedDependency.code;
      final TypeMatcher<FailedDependencyHttpException> isAMatcher =
          isA<FailedDependencyHttpException>();

      Never throwHttpCustomException() {
        throw FailedDependencyHttpException(
          detail: "Not found key 'foo' and 'bar' in JSON",
          data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
          uri: Uri.parse('https://example.org'),
        );
      }

      final String stringExpect =
          "HttpException Status $codeStatusExpect - $stringHttpExpection: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

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
              (FailedDependencyHttpException x) => x.toString(),
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
              (FailedDependencyHttpException x) => x.data,
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
              (FailedDependencyHttpException x) => x.httpStatus.code,
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
              (FailedDependencyHttpException x) => x.uri,
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
              (FailedDependencyHttpException x) => x.toMap(),
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
              (FailedDependencyHttpException x) => x.toString(),
              'toString()',
              stringExpect,
            ),
          ),
        );
      });
    });

    group('- 426 UpgradeRequiredHttpException', () {
      const String stringHttpExpection = 'Upgrade Required';
      final int codeStatusExpect = HttpStatus.upgradeRequired.code;
      final TypeMatcher<UpgradeRequiredHttpException> isAMatcher =
          isA<UpgradeRequiredHttpException>();

      Never throwHttpCustomException() {
        throw UpgradeRequiredHttpException(
          detail: "Not found key 'foo' and 'bar' in JSON",
          data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
          uri: Uri.parse('https://example.org'),
        );
      }

      final String stringExpect =
          "HttpException Status $codeStatusExpect - $stringHttpExpection: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

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
              (UpgradeRequiredHttpException x) => x.toString(),
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
              (UpgradeRequiredHttpException x) => x.data,
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
              (UpgradeRequiredHttpException x) => x.httpStatus.code,
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
              (UpgradeRequiredHttpException x) => x.uri,
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
              (UpgradeRequiredHttpException x) => x.toMap(),
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
              (UpgradeRequiredHttpException x) => x.toString(),
              'toString()',
              stringExpect,
            ),
          ),
        );
      });
    });

    group('- 428 PreconditionRequiredHttpException', () {
      const String stringHttpExpection = 'Precondition Required';
      final int codeStatusExpect = HttpStatus.preconditionRequired.code;
      final TypeMatcher<PreconditionRequiredHttpException> isAMatcher =
          isA<PreconditionRequiredHttpException>();

      Never throwHttpCustomException() {
        throw PreconditionRequiredHttpException(
          detail: "Not found key 'foo' and 'bar' in JSON",
          data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
          uri: Uri.parse('https://example.org'),
        );
      }

      final String stringExpect =
          "HttpException Status $codeStatusExpect - $stringHttpExpection: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

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
              (PreconditionRequiredHttpException x) => x.toString(),
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
              (PreconditionRequiredHttpException x) => x.data,
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
              (PreconditionRequiredHttpException x) => x.httpStatus.code,
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
              (PreconditionRequiredHttpException x) => x.uri,
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
              (PreconditionRequiredHttpException x) => x.toMap(),
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
              (PreconditionRequiredHttpException x) => x.toString(),
              'toString()',
              stringExpect,
            ),
          ),
        );
      });
    });

    group('- 429 TooManyRequestsHttpException', () {
      const String stringHttpExpection = 'Too Many Requests';
      final int codeStatusExpect = HttpStatus.tooManyRequests.code;
      final TypeMatcher<TooManyRequestsHttpException> isAMatcher =
          isA<TooManyRequestsHttpException>();

      Never throwHttpCustomException() {
        throw TooManyRequestsHttpException(
          detail: "Not found key 'foo' and 'bar' in JSON",
          data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
          uri: Uri.parse('https://example.org'),
        );
      }

      final String stringExpect =
          "HttpException Status $codeStatusExpect - $stringHttpExpection: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

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
              (TooManyRequestsHttpException x) => x.toString(),
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
              (TooManyRequestsHttpException x) => x.data,
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
              (TooManyRequestsHttpException x) => x.httpStatus.code,
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
              (TooManyRequestsHttpException x) => x.uri,
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
              (TooManyRequestsHttpException x) => x.toMap(),
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
              (TooManyRequestsHttpException x) => x.toString(),
              'toString()',
              stringExpect,
            ),
          ),
        );
      });
    });

    group('- 431 RequestHeaderFieldsTooLargeHttpException', () {
      const String stringHttpExpection = 'Request Header Fields Too Large';
      final int codeStatusExpect = HttpStatus.requestHeaderFieldsTooLarge.code;
      final TypeMatcher<RequestHeaderFieldsTooLargeHttpException> isAMatcher =
          isA<RequestHeaderFieldsTooLargeHttpException>();

      Never throwHttpCustomException() {
        throw RequestHeaderFieldsTooLargeHttpException(
          detail: "Not found key 'foo' and 'bar' in JSON",
          data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
          uri: Uri.parse('https://example.org'),
        );
      }

      final String stringExpect =
          "HttpException Status $codeStatusExpect - $stringHttpExpection: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

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
              (RequestHeaderFieldsTooLargeHttpException x) => x.toString(),
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
              (RequestHeaderFieldsTooLargeHttpException x) => x.data,
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
              (RequestHeaderFieldsTooLargeHttpException x) => x.httpStatus.code,
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
              (RequestHeaderFieldsTooLargeHttpException x) => x.uri,
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
              (RequestHeaderFieldsTooLargeHttpException x) => x.toMap(),
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
              (RequestHeaderFieldsTooLargeHttpException x) => x.toString(),
              'toString()',
              stringExpect,
            ),
          ),
        );
      });
    });

    group('- 444 ConnectionClosedWithoutResponseHttpException', () {
      const String stringHttpExpection = 'Connection Closed Without Response';
      final int codeStatusExpect =
          HttpStatus.connectionClosedWithoutResponse.code;
      final TypeMatcher<ConnectionClosedWithoutResponseHttpException>
          isAMatcher = isA<ConnectionClosedWithoutResponseHttpException>();

      Never throwHttpCustomException() {
        throw ConnectionClosedWithoutResponseHttpException(
          detail: "Not found key 'foo' and 'bar' in JSON",
          data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
          uri: Uri.parse('https://example.org'),
        );
      }

      final String stringExpect =
          "HttpException Status $codeStatusExpect - $stringHttpExpection: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

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
              (ConnectionClosedWithoutResponseHttpException x) => x.toString(),
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
              (ConnectionClosedWithoutResponseHttpException x) => x.data,
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
              (ConnectionClosedWithoutResponseHttpException x) =>
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
              (ConnectionClosedWithoutResponseHttpException x) => x.uri,
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
              (ConnectionClosedWithoutResponseHttpException x) => x.toMap(),
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
              (ConnectionClosedWithoutResponseHttpException x) => x.toString(),
              'toString()',
              stringExpect,
            ),
          ),
        );
      });
    });

    group('- 451 UnavailableForLegalReasonsHttpException', () {
      const String stringHttpExpection = 'Unavailable For Legal Reasons';
      final int codeStatusExpect = HttpStatus.unavailableForLegalReasons.code;
      final TypeMatcher<UnavailableForLegalReasonsHttpException> isAMatcher =
          isA<UnavailableForLegalReasonsHttpException>();

      Never throwHttpCustomException() {
        throw UnavailableForLegalReasonsHttpException(
          detail: "Not found key 'foo' and 'bar' in JSON",
          data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
          uri: Uri.parse('https://example.org'),
        );
      }

      final String stringExpect =
          "HttpException Status $codeStatusExpect - $stringHttpExpection: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

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
              (UnavailableForLegalReasonsHttpException x) => x.toString(),
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
              (UnavailableForLegalReasonsHttpException x) => x.data,
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
              (UnavailableForLegalReasonsHttpException x) => x.httpStatus.code,
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
              (UnavailableForLegalReasonsHttpException x) => x.uri,
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
              (UnavailableForLegalReasonsHttpException x) => x.toMap(),
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
              (UnavailableForLegalReasonsHttpException x) => x.toString(),
              'toString()',
              stringExpect,
            ),
          ),
        );
      });
    });

    group('- 499 ClientClosedRequestHttpException', () {
      const String stringHttpExpection = 'Client Closed Request';
      final int codeStatusExpect = HttpStatus.clientClosedRequest.code;
      final TypeMatcher<ClientClosedRequestHttpException> isAMatcher =
          isA<ClientClosedRequestHttpException>();

      Never throwHttpCustomException() {
        throw ClientClosedRequestHttpException(
          detail: "Not found key 'foo' and 'bar' in JSON",
          data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
          uri: Uri.parse('https://example.org'),
        );
      }

      final String stringExpect =
          "HttpException Status $codeStatusExpect - $stringHttpExpection: Not found key 'foo' and 'bar' in JSON, uri = https://example.org, HTTP data = {foo: foo value, bar: bar value}";

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
              (ClientClosedRequestHttpException x) => x.toString(),
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
              (ClientClosedRequestHttpException x) => x.data,
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
              (ClientClosedRequestHttpException x) => x.httpStatus.code,
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
              (ClientClosedRequestHttpException x) => x.uri,
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
              (ClientClosedRequestHttpException x) => x.toMap(),
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
              (ClientClosedRequestHttpException x) => x.toString(),
              'toString()',
              stringExpect,
            ),
          ),
        );
      });
    });
  });
}
