import 'package:http_exception/http_exception.dart';
import 'package:http_status/http_status.dart';
import 'package:test/test.dart';

void main() {
  group('HTTP 4XX Exceptions', () {
    const String stringDetailExpect = "Not found key 'foo' and 'bar' in JSON";
    group('[400 BadRequestHttpException]', () {
      const HttpStatus httpStatus = HttpStatus.badRequest;
      final int codeHttpStatus = httpStatus.code;
      final String nameHttpStatus = httpStatus.name;
      final TypeMatcher<BadRequestHttpException> isAMatcher =
          isA<BadRequestHttpException>();

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
        throw BadRequestHttpException(
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
      test('should throw with check status code test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isA<BadRequestHttpException>().having(
              (BadRequestHttpException x) => x.httpStatus.code,
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
            isA<BadRequestHttpException>().having(
              (BadRequestHttpException x) => x.uri,
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
            isA<BadRequestHttpException>().having(
              (BadRequestHttpException x) => x.detail,
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
            isA<BadRequestHttpException>().having(
              (BadRequestHttpException x) => x.toMap(),
              'toMap()',
              mapExpect,
            ),
          ),
        );
      });
    });

    group('[401 UnauthorizedHttpException]', () {
      const HttpStatus httpStatus = HttpStatus.unauthorized;
      final int codeHttpStatus = httpStatus.code;
      final String nameHttpStatus = httpStatus.name;
      final TypeMatcher<UnauthorizedHttpException> isAMatcher =
          isA<UnauthorizedHttpException>();

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
        throw UnauthorizedHttpException(
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
      test('should throw with check status code test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isA<UnauthorizedHttpException>().having(
              (UnauthorizedHttpException x) => x.httpStatus.code,
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
            isA<UnauthorizedHttpException>().having(
              (UnauthorizedHttpException x) => x.uri,
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
            isA<UnauthorizedHttpException>().having(
              (UnauthorizedHttpException x) => x.detail,
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
            isA<UnauthorizedHttpException>().having(
              (UnauthorizedHttpException x) => x.toMap(),
              'toMap()',
              mapExpect,
            ),
          ),
        );
      });
    });

    group('[402 PaymentRequiredHttpException]', () {
      const HttpStatus httpStatus = HttpStatus.paymentRequired;
      final int codeHttpStatus = httpStatus.code;
      final String nameHttpStatus = httpStatus.name;
      final TypeMatcher<PaymentRequiredHttpException> isAMatcher =
          isA<PaymentRequiredHttpException>();

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
        throw PaymentRequiredHttpException(
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
      test('should throw with check status code test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isA<PaymentRequiredHttpException>().having(
              (PaymentRequiredHttpException x) => x.httpStatus.code,
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
            isA<PaymentRequiredHttpException>().having(
              (PaymentRequiredHttpException x) => x.uri,
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
            isA<PaymentRequiredHttpException>().having(
              (PaymentRequiredHttpException x) => x.detail,
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
            isA<PaymentRequiredHttpException>().having(
              (PaymentRequiredHttpException x) => x.toMap(),
              'toMap()',
              mapExpect,
            ),
          ),
        );
      });
    });

    group('[403 ForbiddenHttpException]', () {
      const HttpStatus httpStatus = HttpStatus.forbidden;
      final int codeHttpStatus = httpStatus.code;
      final String nameHttpStatus = httpStatus.name;
      final TypeMatcher<ForbiddenHttpException> isAMatcher =
          isA<ForbiddenHttpException>();

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
        throw ForbiddenHttpException(
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
      test('should throw with check status code test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isA<ForbiddenHttpException>().having(
              (ForbiddenHttpException x) => x.httpStatus.code,
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
            isA<ForbiddenHttpException>().having(
              (ForbiddenHttpException x) => x.uri,
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
            isA<ForbiddenHttpException>().having(
              (ForbiddenHttpException x) => x.detail,
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
            isA<ForbiddenHttpException>().having(
              (ForbiddenHttpException x) => x.toMap(),
              'toMap()',
              mapExpect,
            ),
          ),
        );
      });
    });

    group('[404 NotFoundHttpException]', () {
      const HttpStatus httpStatus = HttpStatus.notFound;
      final int codeHttpStatus = httpStatus.code;
      final String nameHttpStatus = httpStatus.name;
      final TypeMatcher<NotFoundHttpException> isAMatcher =
          isA<NotFoundHttpException>();

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
        throw NotFoundHttpException(
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
      test('should throw with check status code test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isA<NotFoundHttpException>().having(
              (NotFoundHttpException x) => x.httpStatus.code,
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
            isA<NotFoundHttpException>().having(
              (NotFoundHttpException x) => x.uri,
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
            isA<NotFoundHttpException>().having(
              (NotFoundHttpException x) => x.detail,
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
            isA<NotFoundHttpException>().having(
              (NotFoundHttpException x) => x.toMap(),
              'toMap()',
              mapExpect,
            ),
          ),
        );
      });
    });

    group('[405 MethodNotAllowedHttpException]', () {
      const HttpStatus httpStatus = HttpStatus.methodNotAllowed;
      final int codeHttpStatus = httpStatus.code;
      final String nameHttpStatus = httpStatus.name;
      final TypeMatcher<MethodNotAllowedHttpException> isAMatcher =
          isA<MethodNotAllowedHttpException>();

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
        throw MethodNotAllowedHttpException(
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
      test('should throw with check status code test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isA<MethodNotAllowedHttpException>().having(
              (MethodNotAllowedHttpException x) => x.httpStatus.code,
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
            isA<MethodNotAllowedHttpException>().having(
              (MethodNotAllowedHttpException x) => x.uri,
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
            isA<MethodNotAllowedHttpException>().having(
              (MethodNotAllowedHttpException x) => x.detail,
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
            isA<MethodNotAllowedHttpException>().having(
              (MethodNotAllowedHttpException x) => x.toMap(),
              'toMap()',
              mapExpect,
            ),
          ),
        );
      });
    });

    group('[406 NotAcceptableHttpException]', () {
      const HttpStatus httpStatus = HttpStatus.notAcceptable;
      final int codeHttpStatus = httpStatus.code;
      final String nameHttpStatus = httpStatus.name;
      final TypeMatcher<NotAcceptableHttpException> isAMatcher =
          isA<NotAcceptableHttpException>();

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
        throw NotAcceptableHttpException(
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
      test('should throw with check status code test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (NotAcceptableHttpException x) => x.httpStatus.code,
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
              (NotAcceptableHttpException x) => x.uri,
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
              (NotAcceptableHttpException x) => x.detail,
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
              (NotAcceptableHttpException x) => x.toMap(),
              'toMap()',
              mapExpect,
            ),
          ),
        );
      });
    });

    group('[407 ProxyAuthenticationRequiredHttpException]', () {
      const HttpStatus httpStatus = HttpStatus.proxyAuthenticationRequired;
      final int codeHttpStatus = httpStatus.code;
      final String nameHttpStatus = httpStatus.name;
      final TypeMatcher<ProxyAuthenticationRequiredHttpException> isAMatcher =
          isA<ProxyAuthenticationRequiredHttpException>();

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
        throw ProxyAuthenticationRequiredHttpException(
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
      test('should throw with check status code test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (ProxyAuthenticationRequiredHttpException x) => x.httpStatus.code,
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
              (ProxyAuthenticationRequiredHttpException x) => x.uri,
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
              (ProxyAuthenticationRequiredHttpException x) => x.detail,
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
              (ProxyAuthenticationRequiredHttpException x) => x.toMap(),
              'toMap()',
              mapExpect,
            ),
          ),
        );
      });
    });

    group('[408 RequestTimeoutHttpException]', () {
      const HttpStatus httpStatus = HttpStatus.requestTimeout;
      final int codeHttpStatus = httpStatus.code;
      final String nameHttpStatus = httpStatus.name;
      final TypeMatcher<RequestTimeoutHttpException> isAMatcher =
          isA<RequestTimeoutHttpException>();

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
        throw RequestTimeoutHttpException(
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
      test('should throw with check status code test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (RequestTimeoutHttpException x) => x.httpStatus.code,
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
              (RequestTimeoutHttpException x) => x.uri,
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
              (RequestTimeoutHttpException x) => x.detail,
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
              (RequestTimeoutHttpException x) => x.toMap(),
              'toMap()',
              mapExpect,
            ),
          ),
        );
      });
    });

    group('[409 ConflictHttpException]', () {
      const HttpStatus httpStatus = HttpStatus.conflict;
      final int codeHttpStatus = httpStatus.code;
      final String nameHttpStatus = httpStatus.name;
      final TypeMatcher<ConflictHttpException> isAMatcher =
          isA<ConflictHttpException>();

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
        throw ConflictHttpException(
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
      test('should throw with check status code test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (ConflictHttpException x) => x.httpStatus.code,
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
              (ConflictHttpException x) => x.uri,
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
              (ConflictHttpException x) => x.detail,
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
              (ConflictHttpException x) => x.toMap(),
              'toMap()',
              mapExpect,
            ),
          ),
        );
      });
    });

    group('[410 GoneHttpException]', () {
      const HttpStatus httpStatus = HttpStatus.gone;
      final int codeHttpStatus = httpStatus.code;
      final String nameHttpStatus = httpStatus.name;
      final TypeMatcher<GoneHttpException> isAMatcher =
          isA<GoneHttpException>();

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
        throw GoneHttpException(
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
      test('should throw with check status code test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (GoneHttpException x) => x.httpStatus.code,
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
              (GoneHttpException x) => x.uri,
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
              (GoneHttpException x) => x.detail,
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
              (GoneHttpException x) => x.toMap(),
              'toMap()',
              mapExpect,
            ),
          ),
        );
      });
    });

    group('[411 LengthRequiredHttpException]', () {
      const HttpStatus httpStatus = HttpStatus.lengthRequired;
      final int codeHttpStatus = httpStatus.code;
      final String nameHttpStatus = httpStatus.name;
      final TypeMatcher<LengthRequiredHttpException> isAMatcher =
          isA<LengthRequiredHttpException>();

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
        throw LengthRequiredHttpException(
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
      test('should throw with check status code test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (LengthRequiredHttpException x) => x.httpStatus.code,
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
              (LengthRequiredHttpException x) => x.uri,
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
              (LengthRequiredHttpException x) => x.detail,
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
              (LengthRequiredHttpException x) => x.toMap(),
              'toMap()',
              mapExpect,
            ),
          ),
        );
      });
    });

    group('[412 PreconditionFailedHttpException]', () {
      const HttpStatus httpStatus = HttpStatus.preconditionFailed;
      final int codeHttpStatus = httpStatus.code;
      final String nameHttpStatus = httpStatus.name;
      final TypeMatcher<PreconditionFailedHttpException> isAMatcher =
          isA<PreconditionFailedHttpException>();

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
        throw PreconditionFailedHttpException(
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
      test('should throw with check status code test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (PreconditionFailedHttpException x) => x.httpStatus.code,
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
              (PreconditionFailedHttpException x) => x.uri,
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
              (PreconditionFailedHttpException x) => x.detail,
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
              (PreconditionFailedHttpException x) => x.toMap(),
              'toMap()',
              mapExpect,
            ),
          ),
        );
      });
    });

    group('[413 RequestEntityTooLargeHttpException]', () {
      const HttpStatus httpStatus = HttpStatus.requestEntityTooLarge;
      final int codeHttpStatus = httpStatus.code;
      final String nameHttpStatus = httpStatus.name;
      final TypeMatcher<RequestEntityTooLargeHttpException> isAMatcher =
          isA<RequestEntityTooLargeHttpException>();

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
        throw RequestEntityTooLargeHttpException(
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
      test('should throw with check status code test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (RequestEntityTooLargeHttpException x) => x.httpStatus.code,
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
              (RequestEntityTooLargeHttpException x) => x.uri,
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
              (RequestEntityTooLargeHttpException x) => x.detail,
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
              (RequestEntityTooLargeHttpException x) => x.toMap(),
              'toMap()',
              mapExpect,
            ),
          ),
        );
      });
    });

    group('[414 RequestUriTooLongHttpException]', () {
      const HttpStatus httpStatus = HttpStatus.requestUriTooLong;
      final int codeHttpStatus = httpStatus.code;
      final String nameHttpStatus = httpStatus.name;
      final TypeMatcher<RequestUriTooLongHttpException> isAMatcher =
          isA<RequestUriTooLongHttpException>();

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
        throw RequestUriTooLongHttpException(
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
      test('should throw with check status code test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (RequestUriTooLongHttpException x) => x.httpStatus.code,
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
              (RequestUriTooLongHttpException x) => x.uri,
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
              (RequestUriTooLongHttpException x) => x.detail,
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
              (RequestUriTooLongHttpException x) => x.toMap(),
              'toMap()',
              mapExpect,
            ),
          ),
        );
      });
    });

    group('[415 UnsupportedMediaTypeHttpException]', () {
      const HttpStatus httpStatus = HttpStatus.unsupportedMediaType;
      final int codeHttpStatus = httpStatus.code;
      final String nameHttpStatus = httpStatus.name;
      final TypeMatcher<UnsupportedMediaTypeHttpException> isAMatcher =
          isA<UnsupportedMediaTypeHttpException>();

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
        throw UnsupportedMediaTypeHttpException(
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
      test('should throw with check status code test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (UnsupportedMediaTypeHttpException x) => x.httpStatus.code,
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
              (UnsupportedMediaTypeHttpException x) => x.uri,
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
              (UnsupportedMediaTypeHttpException x) => x.detail,
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
              (UnsupportedMediaTypeHttpException x) => x.toMap(),
              'toMap()',
              mapExpect,
            ),
          ),
        );
      });
    });

    group('[416 RequestedRangeNotSatisfiableHttpException]', () {
      const HttpStatus httpStatus = HttpStatus.requestedRangeNotSatisfiable;
      final int codeHttpStatus = httpStatus.code;
      final String nameHttpStatus = httpStatus.name;
      final TypeMatcher<RequestedRangeNotSatisfiableHttpException> isAMatcher =
          isA<RequestedRangeNotSatisfiableHttpException>();

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
        throw RequestedRangeNotSatisfiableHttpException(
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
      test('should throw with check status code test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (RequestedRangeNotSatisfiableHttpException x) =>
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
              (RequestedRangeNotSatisfiableHttpException x) => x.uri,
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
              (RequestedRangeNotSatisfiableHttpException x) => x.detail,
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
              (RequestedRangeNotSatisfiableHttpException x) => x.toMap(),
              'toMap()',
              mapExpect,
            ),
          ),
        );
      });
    });

    group('[417 ExpectationFailedHttpException]', () {
      const HttpStatus httpStatus = HttpStatus.expectationFailed;
      final int codeHttpStatus = httpStatus.code;
      final String nameHttpStatus = httpStatus.name;
      final TypeMatcher<ExpectationFailedHttpException> isAMatcher =
          isA<ExpectationFailedHttpException>();

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
        throw ExpectationFailedHttpException(
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
      test('should throw with check status code test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (ExpectationFailedHttpException x) => x.httpStatus.code,
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
              (ExpectationFailedHttpException x) => x.uri,
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
              (ExpectationFailedHttpException x) => x.detail,
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
              (ExpectationFailedHttpException x) => x.toMap(),
              'toMap()',
              mapExpect,
            ),
          ),
        );
      });
    });

    group('[418 ImATeapotHttpException]', () {
      const HttpStatus httpStatus = HttpStatus.imATeapot;
      final int codeHttpStatus = httpStatus.code;
      final String nameHttpStatus = httpStatus.name;
      final TypeMatcher<ImATeapotHttpException> isAMatcher =
          isA<ImATeapotHttpException>();

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
        throw ImATeapotHttpException(
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
      test('should throw with check status code test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (ImATeapotHttpException x) => x.httpStatus.code,
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
              (ImATeapotHttpException x) => x.uri,
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
              (ImATeapotHttpException x) => x.detail,
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
              (ImATeapotHttpException x) => x.toMap(),
              'toMap()',
              mapExpect,
            ),
          ),
        );
      });
    });

    group('[419 InsufficientSpaceOnResourceHttpException]', () {
      const HttpStatus httpStatus = HttpStatus.insufficientSpaceOnResource;
      final int codeHttpStatus = httpStatus.code;
      final String nameHttpStatus = httpStatus.name;
      final TypeMatcher<InsufficientSpaceOnResourceHttpException> isAMatcher =
          isA<InsufficientSpaceOnResourceHttpException>();

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
        throw InsufficientSpaceOnResourceHttpException(
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
      test('should throw with check status code test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (InsufficientSpaceOnResourceHttpException x) => x.httpStatus.code,
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
              (InsufficientSpaceOnResourceHttpException x) => x.uri,
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
              (InsufficientSpaceOnResourceHttpException x) => x.detail,
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
              (InsufficientSpaceOnResourceHttpException x) => x.toMap(),
              'toMap()',
              mapExpect,
            ),
          ),
        );
      });
    });

    group('[420 MethodFailureHttpException]', () {
      const HttpStatus httpStatus = HttpStatus.methodFailure;
      final int codeHttpStatus = httpStatus.code;
      final String nameHttpStatus = httpStatus.name;
      final TypeMatcher<MethodFailureHttpException> isAMatcher =
          isA<MethodFailureHttpException>();

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
        throw MethodFailureHttpException(
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
      test('should throw with check status code test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (MethodFailureHttpException x) => x.httpStatus.code,
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
              (MethodFailureHttpException x) => x.uri,
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
              (MethodFailureHttpException x) => x.detail,
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
              (MethodFailureHttpException x) => x.toMap(),
              'toMap()',
              mapExpect,
            ),
          ),
        );
      });
    });

    group('[421 MisdirectedRequestHttpException]', () {
      const HttpStatus httpStatus = HttpStatus.misdirectedRequest;
      final int codeHttpStatus = httpStatus.code;
      final String nameHttpStatus = httpStatus.name;
      final TypeMatcher<MisdirectedRequestHttpException> isAMatcher =
          isA<MisdirectedRequestHttpException>();

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
        throw MisdirectedRequestHttpException(
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
      test('should throw with check status code test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (MisdirectedRequestHttpException x) => x.httpStatus.code,
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
              (MisdirectedRequestHttpException x) => x.uri,
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
              (MisdirectedRequestHttpException x) => x.detail,
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
              (MisdirectedRequestHttpException x) => x.toMap(),
              'toMap()',
              mapExpect,
            ),
          ),
        );
      });
    });

    group('[422 UnprocessableEntityHttpException]', () {
      const HttpStatus httpStatus = HttpStatus.unprocessableEntity;
      final int codeHttpStatus = httpStatus.code;
      final String nameHttpStatus = httpStatus.name;
      final TypeMatcher<UnprocessableEntityHttpException> isAMatcher =
          isA<UnprocessableEntityHttpException>();

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
        throw UnprocessableEntityHttpException(
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
      test('should throw with check status code test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (UnprocessableEntityHttpException x) => x.httpStatus.code,
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
              (UnprocessableEntityHttpException x) => x.uri,
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
              (UnprocessableEntityHttpException x) => x.detail,
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
              (UnprocessableEntityHttpException x) => x.toMap(),
              'toMap()',
              mapExpect,
            ),
          ),
        );
      });
    });

    group('[423 LockedHttpException]', () {
      const HttpStatus httpStatus = HttpStatus.locked;
      final int codeHttpStatus = httpStatus.code;
      final String nameHttpStatus = httpStatus.name;
      final TypeMatcher<LockedHttpException> isAMatcher =
          isA<LockedHttpException>();

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
        throw LockedHttpException(
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
      test('should throw with check status code test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (LockedHttpException x) => x.httpStatus.code,
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
              (LockedHttpException x) => x.uri,
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
              (LockedHttpException x) => x.detail,
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
              (LockedHttpException x) => x.toMap(),
              'toMap()',
              mapExpect,
            ),
          ),
        );
      });
    });

    group('[424 FailedDependencyHttpException]', () {
      const HttpStatus httpStatus = HttpStatus.failedDependency;
      final int codeHttpStatus = httpStatus.code;
      final String nameHttpStatus = httpStatus.name;
      final TypeMatcher<FailedDependencyHttpException> isAMatcher =
          isA<FailedDependencyHttpException>();

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
        throw FailedDependencyHttpException(
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
      test('should throw with check status code test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (FailedDependencyHttpException x) => x.httpStatus.code,
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
              (FailedDependencyHttpException x) => x.uri,
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
              (FailedDependencyHttpException x) => x.detail,
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
              (FailedDependencyHttpException x) => x.toMap(),
              'toMap()',
              mapExpect,
            ),
          ),
        );
      });
    });

    group('[426 UpgradeRequiredHttpException]', () {
      const HttpStatus httpStatus = HttpStatus.upgradeRequired;
      final int codeHttpStatus = httpStatus.code;
      final String nameHttpStatus = httpStatus.name;
      final TypeMatcher<UpgradeRequiredHttpException> isAMatcher =
          isA<UpgradeRequiredHttpException>();

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
        throw UpgradeRequiredHttpException(
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
      test('should throw with check status code test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (UpgradeRequiredHttpException x) => x.httpStatus.code,
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
              (UpgradeRequiredHttpException x) => x.uri,
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
              (UpgradeRequiredHttpException x) => x.detail,
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
              (UpgradeRequiredHttpException x) => x.toMap(),
              'toMap()',
              mapExpect,
            ),
          ),
        );
      });
    });

    group('[428 PreconditionRequiredHttpException]', () {
      const HttpStatus httpStatus = HttpStatus.preconditionRequired;
      final int codeHttpStatus = httpStatus.code;
      final String nameHttpStatus = httpStatus.name;
      final TypeMatcher<PreconditionRequiredHttpException> isAMatcher =
          isA<PreconditionRequiredHttpException>();

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
        throw PreconditionRequiredHttpException(
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
      test('should throw with check status code test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (PreconditionRequiredHttpException x) => x.httpStatus.code,
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
              (PreconditionRequiredHttpException x) => x.uri,
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
              (PreconditionRequiredHttpException x) => x.detail,
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
              (PreconditionRequiredHttpException x) => x.toMap(),
              'toMap()',
              mapExpect,
            ),
          ),
        );
      });
    });

    group('[429 TooManyRequestsHttpException]', () {
      const HttpStatus httpStatus = HttpStatus.tooManyRequests;
      final int codeHttpStatus = httpStatus.code;
      final String nameHttpStatus = httpStatus.name;
      final TypeMatcher<TooManyRequestsHttpException> isAMatcher =
          isA<TooManyRequestsHttpException>();

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
        throw TooManyRequestsHttpException(
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
      test('should throw with check status code test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (TooManyRequestsHttpException x) => x.httpStatus.code,
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
              (TooManyRequestsHttpException x) => x.uri,
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
              (TooManyRequestsHttpException x) => x.detail,
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
              (TooManyRequestsHttpException x) => x.toMap(),
              'toMap()',
              mapExpect,
            ),
          ),
        );
      });
    });

    group('[431 RequestHeaderFieldsTooLargeHttpException]', () {
      const HttpStatus httpStatus = HttpStatus.requestHeaderFieldsTooLarge;
      final int codeHttpStatus = httpStatus.code;
      final String nameHttpStatus = httpStatus.name;
      final TypeMatcher<RequestHeaderFieldsTooLargeHttpException> isAMatcher =
          isA<RequestHeaderFieldsTooLargeHttpException>();

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
        throw RequestHeaderFieldsTooLargeHttpException(
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
      test('should throw with check status code test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (RequestHeaderFieldsTooLargeHttpException x) => x.httpStatus.code,
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
              (RequestHeaderFieldsTooLargeHttpException x) => x.uri,
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
              (RequestHeaderFieldsTooLargeHttpException x) => x.detail,
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
              (RequestHeaderFieldsTooLargeHttpException x) => x.toMap(),
              'toMap()',
              mapExpect,
            ),
          ),
        );
      });
    });

    group('[444 ConnectionClosedWithoutResponseHttpException]', () {
      const HttpStatus httpStatus = HttpStatus.connectionClosedWithoutResponse;
      final int codeHttpStatus = httpStatus.code;
      final String nameHttpStatus = httpStatus.name;
      final TypeMatcher<ConnectionClosedWithoutResponseHttpException>
          isAMatcher = isA<ConnectionClosedWithoutResponseHttpException>();

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
        throw ConnectionClosedWithoutResponseHttpException(
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
      test('should throw with check status code test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (ConnectionClosedWithoutResponseHttpException x) =>
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
              (ConnectionClosedWithoutResponseHttpException x) => x.uri,
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
              (ConnectionClosedWithoutResponseHttpException x) => x.detail,
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
              (ConnectionClosedWithoutResponseHttpException x) => x.toMap(),
              'toMap()',
              mapExpect,
            ),
          ),
        );
      });
    });

    group('[451 UnavailableForLegalReasonsHttpException]', () {
      const String nameHttpStatus = 'Unavailable For Legal Reasons';
      final int codeHttpStatus = HttpStatus.unavailableForLegalReasons.code;
      final TypeMatcher<UnavailableForLegalReasonsHttpException> isAMatcher =
          isA<UnavailableForLegalReasonsHttpException>();

      Never throwHttpCustomException() {
        throw UnavailableForLegalReasonsHttpException(
          detail: "Not found key 'foo' and 'bar' in JSON",
          data: const <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
          uri: Uri.parse('https://example.org'),
        );
      }

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
      test('should throw with check status code test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (UnavailableForLegalReasonsHttpException x) => x.httpStatus.code,
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
              (UnavailableForLegalReasonsHttpException x) => x.uri,
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
              (UnavailableForLegalReasonsHttpException x) => x.detail,
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
              (UnavailableForLegalReasonsHttpException x) => x.toMap(),
              'toMap()',
              mapExpect,
            ),
          ),
        );
      });
    });

    group('[499 ClientClosedRequestHttpException]', () {
      const HttpStatus httpStatus = HttpStatus.clientClosedRequest;
      final int codeHttpStatus = httpStatus.code;
      final String nameHttpStatus = httpStatus.name;
      final TypeMatcher<ClientClosedRequestHttpException> isAMatcher =
          isA<ClientClosedRequestHttpException>();

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
        throw ClientClosedRequestHttpException(
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
      test('should throw with check status code test', () {
        expect(
          throwHttpCustomException,
          throwsA(
            isAMatcher.having(
              (ClientClosedRequestHttpException x) => x.httpStatus.code,
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
              (ClientClosedRequestHttpException x) => x.uri,
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
              (ClientClosedRequestHttpException x) => x.detail,
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
              (ClientClosedRequestHttpException x) => x.toMap(),
              'toMap()',
              mapExpect,
            ),
          ),
        );
      });
    });
  });
}
