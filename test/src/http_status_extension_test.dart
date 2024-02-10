import 'package:http_exception/http_exception.dart';
import 'package:http_status/http_status.dart';
import 'package:test/test.dart';

void main() {
  group('HttpStatus Extension', () {
    group('3xx', () {
      group('multipleChoices_300', () {
        const HttpStatus selectedEnum = HttpStatus.multipleChoices;
        final HttpException objectB =
            HttpStatus.fromCode(HttpStatus.multipleChoices.code).exception();

        Never throwCustomDefaultException() {
          throw selectedEnum.exception();
        }

        Never throwCustomDataException() {
          throw selectedEnum.exception(
            detail: "Not found key 'foo' and 'bar' in JSON",
            data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
            uri: Uri.parse('https://example.org'),
          );
        }

        test('test same object exception', () async {
          expect(objectB, selectedEnum.exception());
        });

        test('code test', () async {
          expect(selectedEnum.code, HttpStatus.multipleChoices.code);
        });

        test('exception() default test', () async {
          expect(throwCustomDefaultException, throwsException);
          expect(
            throwCustomDefaultException,
            throwsA(isA<HttpException>()),
          );
        });

        test('exception() custom test', () async {
          expect(throwCustomDataException, throwsException);
          expect(
            throwCustomDataException,
            throwsA(isA<HttpException>()),
          );
        });
      });
    });
    group('4xx', () {
      group('badRequest_400', () {
        const HttpStatus selectedEnum = HttpStatus.badRequest;
        final HttpException objectB =
            HttpStatus.fromCode(HttpStatus.badRequest.code).exception();

        Never throwCustomDefaultException() {
          throw selectedEnum.exception();
        }

        Never throwCustomDataException() {
          throw selectedEnum.exception(
            detail: "Not found key 'foo' and 'bar' in JSON",
            data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
            uri: Uri.parse('https://example.org'),
          );
        }

        test('test same object exception', () async {
          expect(objectB, selectedEnum.exception());
        });

        test('code test', () async {
          expect(selectedEnum.code, HttpStatus.badRequest.code);
        });

        test('exception() default test', () async {
          expect(throwCustomDefaultException, throwsException);
          expect(
            throwCustomDefaultException,
            throwsA(isA<BadRequestHttpException>()),
          );
        });

        test('exception() custom test', () async {
          expect(throwCustomDataException, throwsException);
          expect(
            throwCustomDataException,
            throwsA(isA<BadRequestHttpException>()),
          );
        });
      });

      group('unauthorized_401', () {
        const selectedEnum = HttpStatus.unauthorized;
        final HttpException objectB =
            HttpStatus.fromCode(HttpStatus.unauthorized.code).exception();

        Never throwCustomDefaultException() {
          throw selectedEnum.exception();
        }

        Never throwCustomDataException() {
          throw selectedEnum.exception(
            detail: "Not found key 'foo' and 'bar' in JSON",
            data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
            uri: Uri.parse('https://example.org'),
          );
        }

        test('test same object exception', () async {
          expect(objectB, selectedEnum.exception());
        });

        test('code test', () async {
          expect(selectedEnum.code, HttpStatus.unauthorized.code);
        });

        test('exception() default test', () async {
          expect(throwCustomDefaultException, throwsException);
          expect(
            throwCustomDefaultException,
            throwsA(isA<UnauthorizedHttpException>()),
          );
        });

        test('exception() custom test', () async {
          expect(throwCustomDataException, throwsException);
          expect(
            throwCustomDataException,
            throwsA(isA<UnauthorizedHttpException>()),
          );
        });
      });
      group('paymentRequired_402', () {
        const selectedEnum = HttpStatus.paymentRequired;
        final HttpException objectB =
            HttpStatus.fromCode(HttpStatus.paymentRequired.code).exception();

        Never throwCustomDefaultException() {
          throw selectedEnum.exception();
        }

        Never throwCustomDataException() {
          throw selectedEnum.exception(
            detail: "Not found key 'foo' and 'bar' in JSON",
            data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
            uri: Uri.parse('https://example.org'),
          );
        }

        test('test same object exception', () async {
          expect(objectB, selectedEnum.exception());
        });

        test('code test', () async {
          expect(selectedEnum.code, HttpStatus.paymentRequired.code);
        });

        test('exception() default test', () async {
          expect(throwCustomDefaultException, throwsException);
          expect(
            throwCustomDefaultException,
            throwsA(isA<PaymentRequiredHttpException>()),
          );
        });

        test('exception() custom test', () async {
          expect(throwCustomDataException, throwsException);
          expect(
            throwCustomDataException,
            throwsA(isA<PaymentRequiredHttpException>()),
          );
        });
      });
      group('forbidden_403', () {
        const selectedEnum = HttpStatus.forbidden;
        final HttpException objectB =
            HttpStatus.fromCode(HttpStatus.forbidden.code).exception();

        Never throwCustomDefaultException() {
          throw selectedEnum.exception();
        }

        Never throwCustomDataException() {
          throw selectedEnum.exception(
            detail: "Not found key 'foo' and 'bar' in JSON",
            data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
            uri: Uri.parse('https://example.org'),
          );
        }

        test('test same object exception', () async {
          expect(objectB, selectedEnum.exception());
        });

        test('code test', () async {
          expect(selectedEnum.code, HttpStatus.forbidden.code);
        });

        test('exception() default test', () async {
          expect(throwCustomDefaultException, throwsException);
          expect(
            throwCustomDefaultException,
            throwsA(isA<ForbiddenHttpException>()),
          );
        });

        test('exception() custom test', () async {
          expect(throwCustomDataException, throwsException);
          expect(
            throwCustomDataException,
            throwsA(isA<ForbiddenHttpException>()),
          );
        });
      });
      group('notFound_404', () {
        const selectedEnum = HttpStatus.notFound;
        final HttpException objectB =
            HttpStatus.fromCode(HttpStatus.notFound.code).exception();

        Never throwCustomDefaultException() {
          throw selectedEnum.exception();
        }

        Never throwCustomDataException() {
          throw selectedEnum.exception(
            detail: "Not found key 'foo' and 'bar' in JSON",
            data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
            uri: Uri.parse('https://example.org'),
          );
        }

        test('test same object exception', () async {
          expect(objectB, selectedEnum.exception());
        });

        test('code test', () async {
          expect(selectedEnum.code, HttpStatus.notFound.code);
        });

        test('exception() default test', () async {
          expect(throwCustomDefaultException, throwsException);
          expect(
            throwCustomDefaultException,
            throwsA(isA<NotFoundHttpException>()),
          );
        });

        test('exception() custom test', () async {
          expect(throwCustomDataException, throwsException);
          expect(
            throwCustomDataException,
            throwsA(isA<NotFoundHttpException>()),
          );
        });
      });
      group('methodNotAllowed_405', () {
        const selectedEnum = HttpStatus.methodNotAllowed;
        final HttpException objectB =
            HttpStatus.fromCode(HttpStatus.methodNotAllowed.code).exception();

        Never throwCustomDefaultException() {
          throw selectedEnum.exception();
        }

        Never throwCustomDataException() {
          throw selectedEnum.exception(
            detail: "Not found key 'foo' and 'bar' in JSON",
            data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
            uri: Uri.parse('https://example.org'),
          );
        }

        test('test same object exception', () async {
          expect(objectB, selectedEnum.exception());
        });

        test('code test', () async {
          expect(selectedEnum.code, HttpStatus.methodNotAllowed.code);
        });

        test('exception() default test', () async {
          expect(throwCustomDefaultException, throwsException);
          expect(
            throwCustomDefaultException,
            throwsA(isA<MethodNotAllowedHttpException>()),
          );
        });

        test('exception() custom test', () async {
          expect(throwCustomDataException, throwsException);
          expect(
            throwCustomDataException,
            throwsA(isA<MethodNotAllowedHttpException>()),
          );
        });
      });
      group('notAcceptable_406', () {
        const selectedEnum = HttpStatus.notAcceptable;
        final HttpException objectB =
            HttpStatus.fromCode(HttpStatus.notAcceptable.code).exception();

        Never throwCustomDefaultException() {
          throw selectedEnum.exception();
        }

        Never throwCustomDataException() {
          throw selectedEnum.exception(
            detail: "Not found key 'foo' and 'bar' in JSON",
            data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
            uri: Uri.parse('https://example.org'),
          );
        }

        test('test same object exception', () async {
          expect(objectB, selectedEnum.exception());
        });

        test('code test', () async {
          expect(selectedEnum.code, HttpStatus.notAcceptable.code);
        });

        test('exception() default test', () async {
          expect(throwCustomDefaultException, throwsException);
          expect(
            throwCustomDefaultException,
            throwsA(isA<NotAcceptableHttpException>()),
          );
        });

        test('exception() custom test', () async {
          expect(throwCustomDataException, throwsException);
          expect(
            throwCustomDataException,
            throwsA(isA<NotAcceptableHttpException>()),
          );
        });
      });
      group('proxyAuthenticationRequired_407', () {
        const selectedEnum = HttpStatus.proxyAuthenticationRequired;
        final HttpException objectB =
            HttpStatus.fromCode(HttpStatus.proxyAuthenticationRequired.code)
                .exception();

        Never throwCustomDefaultException() {
          throw selectedEnum.exception();
        }

        Never throwCustomDataException() {
          throw selectedEnum.exception(
            detail: "Not found key 'foo' and 'bar' in JSON",
            data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
            uri: Uri.parse('https://example.org'),
          );
        }

        test('test same object exception', () async {
          expect(objectB, selectedEnum.exception());
        });

        test('code test', () async {
          expect(
            selectedEnum.code,
            HttpStatus.proxyAuthenticationRequired.code,
          );
        });

        test('exception() default test', () async {
          expect(throwCustomDefaultException, throwsException);
          expect(
            throwCustomDefaultException,
            throwsA(isA<ProxyAuthenticationRequiredHttpException>()),
          );
        });

        test('exception() custom test', () async {
          expect(throwCustomDataException, throwsException);
          expect(
            throwCustomDataException,
            throwsA(isA<ProxyAuthenticationRequiredHttpException>()),
          );
        });
      });
      group('requestTimeout_408', () {
        const selectedEnum = HttpStatus.requestTimeout;
        final HttpException objectB =
            HttpStatus.fromCode(HttpStatus.requestTimeout.code).exception();

        Never throwCustomDefaultException() {
          throw selectedEnum.exception();
        }

        Never throwCustomDataException() {
          throw selectedEnum.exception(
            detail: "Not found key 'foo' and 'bar' in JSON",
            data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
            uri: Uri.parse('https://example.org'),
          );
        }

        test('test same object exception', () async {
          expect(objectB, selectedEnum.exception());
        });

        test('code test', () async {
          expect(selectedEnum.code, HttpStatus.requestTimeout.code);
        });

        test('exception() default test', () async {
          expect(throwCustomDefaultException, throwsException);
          expect(
            throwCustomDefaultException,
            throwsA(isA<RequestTimeoutHttpException>()),
          );
        });

        test('exception() custom test', () async {
          expect(throwCustomDataException, throwsException);
          expect(
            throwCustomDataException,
            throwsA(isA<RequestTimeoutHttpException>()),
          );
        });
      });
      group('conflict_409', () {
        const selectedEnum = HttpStatus.conflict;
        final HttpException objectB =
            HttpStatus.fromCode(HttpStatus.conflict.code).exception();

        Never throwCustomDefaultException() {
          throw selectedEnum.exception();
        }

        Never throwCustomDataException() {
          throw selectedEnum.exception(
            detail: "Not found key 'foo' and 'bar' in JSON",
            data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
            uri: Uri.parse('https://example.org'),
          );
        }

        test('test same object exception', () async {
          expect(objectB, selectedEnum.exception());
        });

        test('code test', () async {
          expect(selectedEnum.code, HttpStatus.conflict.code);
        });

        test('exception() default test', () async {
          expect(throwCustomDefaultException, throwsException);
          expect(
            throwCustomDefaultException,
            throwsA(isA<ConflictHttpException>()),
          );
        });

        test('exception() custom test', () async {
          expect(throwCustomDataException, throwsException);
          expect(
            throwCustomDataException,
            throwsA(isA<ConflictHttpException>()),
          );
        });
      });
      group('gone_410', () {
        const selectedEnum = HttpStatus.gone;
        final HttpException objectB =
            HttpStatus.fromCode(HttpStatus.gone.code).exception();

        Never throwCustomDefaultException() {
          throw selectedEnum.exception();
        }

        Never throwCustomDataException() {
          throw selectedEnum.exception(
            detail: "Not found key 'foo' and 'bar' in JSON",
            data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
            uri: Uri.parse('https://example.org'),
          );
        }

        test('test same object exception', () async {
          expect(objectB, selectedEnum.exception());
        });

        test('code test', () async {
          expect(selectedEnum.code, HttpStatus.gone.code);
        });

        test('exception() default test', () async {
          expect(throwCustomDefaultException, throwsException);
          expect(
            throwCustomDefaultException,
            throwsA(isA<GoneHttpException>()),
          );
        });

        test('exception() custom test', () async {
          expect(throwCustomDataException, throwsException);
          expect(throwCustomDataException, throwsA(isA<GoneHttpException>()));
        });
      });
      group('lengthRequired_411', () {
        const selectedEnum = HttpStatus.lengthRequired;
        final HttpException objectB =
            HttpStatus.fromCode(HttpStatus.lengthRequired.code).exception();

        Never throwCustomDefaultException() {
          throw selectedEnum.exception();
        }

        Never throwCustomDataException() {
          throw selectedEnum.exception(
            detail: "Not found key 'foo' and 'bar' in JSON",
            data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
            uri: Uri.parse('https://example.org'),
          );
        }

        test('test same object exception', () async {
          expect(objectB, selectedEnum.exception());
        });

        test('code test', () async {
          expect(selectedEnum.code, HttpStatus.lengthRequired.code);
        });

        test('exception() default test', () async {
          expect(throwCustomDefaultException, throwsException);
          expect(
            throwCustomDefaultException,
            throwsA(isA<LengthRequiredHttpException>()),
          );
        });

        test('exception() custom test', () async {
          expect(throwCustomDataException, throwsException);
          expect(
            throwCustomDataException,
            throwsA(isA<LengthRequiredHttpException>()),
          );
        });
      });
      group('preconditionFailed_412', () {
        const selectedEnum = HttpStatus.preconditionFailed;
        final HttpException objectB =
            HttpStatus.fromCode(HttpStatus.preconditionFailed.code).exception();

        Never throwCustomDefaultException() {
          throw selectedEnum.exception();
        }

        Never throwCustomDataException() {
          throw selectedEnum.exception(
            detail: "Not found key 'foo' and 'bar' in JSON",
            data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
            uri: Uri.parse('https://example.org'),
          );
        }

        test('test same object exception', () async {
          expect(objectB, selectedEnum.exception());
        });

        test('code test', () async {
          expect(selectedEnum.code, HttpStatus.preconditionFailed.code);
        });

        test('exception() default test', () async {
          expect(throwCustomDefaultException, throwsException);
          expect(
            throwCustomDefaultException,
            throwsA(isA<PreconditionFailedHttpException>()),
          );
        });

        test('exception() custom test', () async {
          expect(throwCustomDataException, throwsException);
          expect(
            throwCustomDataException,
            throwsA(isA<PreconditionFailedHttpException>()),
          );
        });
      });
      group('requestEntityTooLarge_413', () {
        const selectedEnum = HttpStatus.requestEntityTooLarge;
        final HttpException objectB =
            HttpStatus.fromCode(HttpStatus.requestEntityTooLarge.code)
                .exception();

        Never throwCustomDefaultException() {
          throw selectedEnum.exception();
        }

        Never throwCustomDataException() {
          throw selectedEnum.exception(
            detail: "Not found key 'foo' and 'bar' in JSON",
            data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
            uri: Uri.parse('https://example.org'),
          );
        }

        test('test same object exception', () async {
          expect(objectB, selectedEnum.exception());
        });

        test('code test', () async {
          expect(selectedEnum.code, HttpStatus.requestEntityTooLarge.code);
        });

        test('exception() default test', () async {
          expect(throwCustomDefaultException, throwsException);
          expect(
            throwCustomDefaultException,
            throwsA(isA<RequestEntityTooLargeHttpException>()),
          );
        });

        test('exception() custom test', () async {
          expect(throwCustomDataException, throwsException);
          expect(
            throwCustomDataException,
            throwsA(isA<RequestEntityTooLargeHttpException>()),
          );
        });
      });
      group('requestUriTooLong_414', () {
        const selectedEnum = HttpStatus.requestUriTooLong;
        final HttpException objectB =
            HttpStatus.fromCode(HttpStatus.requestUriTooLong.code).exception();

        Never throwCustomDefaultException() {
          throw selectedEnum.exception();
        }

        Never throwCustomDataException() {
          throw selectedEnum.exception(
            detail: "Not found key 'foo' and 'bar' in JSON",
            data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
            uri: Uri.parse('https://example.org'),
          );
        }

        test('test same object exception', () async {
          expect(objectB, selectedEnum.exception());
        });

        test('code test', () async {
          expect(selectedEnum.code, HttpStatus.requestUriTooLong.code);
        });

        test('exception() default test', () async {
          expect(throwCustomDefaultException, throwsException);
          expect(
            throwCustomDefaultException,
            throwsA(isA<RequestUriTooLongHttpException>()),
          );
        });

        test('exception() custom test', () async {
          expect(throwCustomDataException, throwsException);
          expect(
            throwCustomDataException,
            throwsA(isA<RequestUriTooLongHttpException>()),
          );
        });
      });
      group('unsupportedMediaType_415', () {
        const selectedEnum = HttpStatus.unsupportedMediaType;
        final HttpException objectB =
            HttpStatus.fromCode(HttpStatus.unsupportedMediaType.code)
                .exception();

        Never throwCustomDefaultException() {
          throw selectedEnum.exception();
        }

        Never throwCustomDataException() {
          throw selectedEnum.exception(
            detail: "Not found key 'foo' and 'bar' in JSON",
            data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
            uri: Uri.parse('https://example.org'),
          );
        }

        test('test same object exception', () async {
          expect(objectB, selectedEnum.exception());
        });

        test('code test', () async {
          expect(selectedEnum.code, HttpStatus.unsupportedMediaType.code);
        });

        test('exception() default test', () async {
          expect(throwCustomDefaultException, throwsException);
          expect(
            throwCustomDefaultException,
            throwsA(isA<UnsupportedMediaTypeHttpException>()),
          );
        });

        test('exception() custom test', () async {
          expect(throwCustomDataException, throwsException);
          expect(
            throwCustomDataException,
            throwsA(isA<UnsupportedMediaTypeHttpException>()),
          );
        });
      });
      group('requestedRangeNotSatisfiable_416', () {
        const selectedEnum = HttpStatus.requestedRangeNotSatisfiable;
        final HttpException objectB =
            HttpStatus.fromCode(HttpStatus.requestedRangeNotSatisfiable.code)
                .exception();

        Never throwCustomDefaultException() {
          throw selectedEnum.exception();
        }

        Never throwCustomDataException() {
          throw selectedEnum.exception(
            detail: "Not found key 'foo' and 'bar' in JSON",
            data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
            uri: Uri.parse('https://example.org'),
          );
        }

        test('test same object exception', () async {
          expect(objectB, selectedEnum.exception());
        });

        test('code test', () async {
          expect(
            selectedEnum.code,
            HttpStatus.requestedRangeNotSatisfiable.code,
          );
        });

        test('exception() default test', () async {
          expect(throwCustomDefaultException, throwsException);
          expect(
            throwCustomDefaultException,
            throwsA(isA<RequestedRangeNotSatisfiableHttpException>()),
          );
        });

        test('exception() custom test', () async {
          expect(throwCustomDataException, throwsException);
          expect(
            throwCustomDataException,
            throwsA(isA<RequestedRangeNotSatisfiableHttpException>()),
          );
        });
      });
      group('expectationFailed_417', () {
        const selectedEnum = HttpStatus.expectationFailed;
        final HttpException objectB =
            HttpStatus.fromCode(HttpStatus.expectationFailed.code).exception();

        Never throwCustomDefaultException() {
          throw selectedEnum.exception();
        }

        Never throwCustomDataException() {
          throw selectedEnum.exception(
            detail: "Not found key 'foo' and 'bar' in JSON",
            data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
            uri: Uri.parse('https://example.org'),
          );
        }

        test('test same object exception', () async {
          expect(objectB, selectedEnum.exception());
        });

        test('code test', () async {
          expect(selectedEnum.code, HttpStatus.expectationFailed.code);
        });

        test('exception() default test', () async {
          expect(throwCustomDefaultException, throwsException);
          expect(
            throwCustomDefaultException,
            throwsA(isA<ExpectationFailedHttpException>()),
          );
        });

        test('exception() custom test', () async {
          expect(throwCustomDataException, throwsException);
          expect(
            throwCustomDataException,
            throwsA(isA<ExpectationFailedHttpException>()),
          );
        });
      });
      group('imATeapot_418', () {
        const selectedEnum = HttpStatus.imATeapot;
        final HttpException objectB =
            HttpStatus.fromCode(HttpStatus.imATeapot.code).exception();

        Never throwCustomDefaultException() {
          throw selectedEnum.exception();
        }

        Never throwCustomDataException() {
          throw selectedEnum.exception(
            detail: "Not found key 'foo' and 'bar' in JSON",
            data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
            uri: Uri.parse('https://example.org'),
          );
        }

        test('test same object exception', () async {
          expect(objectB, selectedEnum.exception());
        });

        test('code test', () async {
          expect(selectedEnum.code, HttpStatus.imATeapot.code);
        });

        test('exception() default test', () async {
          expect(throwCustomDefaultException, throwsException);
          expect(
            throwCustomDefaultException,
            throwsA(isA<ImATeapotHttpException>()),
          );
        });

        test('exception() custom test', () async {
          expect(throwCustomDataException, throwsException);
          expect(
            throwCustomDataException,
            throwsA(isA<ImATeapotHttpException>()),
          );
        });
      });
      group('insufficientSpaceOnResource_419', () {
        const selectedEnum = HttpStatus.insufficientSpaceOnResource;
        final HttpException objectB =
            HttpStatus.fromCode(HttpStatus.insufficientSpaceOnResource.code)
                .exception();

        Never throwCustomDefaultException() {
          throw selectedEnum.exception();
        }

        Never throwCustomDataException() {
          throw selectedEnum.exception(
            detail: "Not found key 'foo' and 'bar' in JSON",
            data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
            uri: Uri.parse('https://example.org'),
          );
        }

        test('test same object exception', () async {
          expect(objectB, selectedEnum.exception());
        });

        test('code test', () async {
          expect(
            selectedEnum.code,
            HttpStatus.insufficientSpaceOnResource.code,
          );
        });

        test('exception() default test', () async {
          expect(throwCustomDefaultException, throwsException);
          expect(
            throwCustomDefaultException,
            throwsA(isA<InsufficientSpaceOnResourceHttpException>()),
          );
        });

        test('exception() custom test', () async {
          expect(throwCustomDataException, throwsException);
          expect(
            throwCustomDataException,
            throwsA(isA<InsufficientSpaceOnResourceHttpException>()),
          );
        });
      });
      group('methodFailure_420', () {
        const selectedEnum = HttpStatus.methodFailure;
        final HttpException objectB =
            HttpStatus.fromCode(HttpStatus.methodFailure.code).exception();

        Never throwCustomDefaultException() {
          throw selectedEnum.exception();
        }

        Never throwCustomDataException() {
          throw selectedEnum.exception(
            detail: "Not found key 'foo' and 'bar' in JSON",
            data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
            uri: Uri.parse('https://example.org'),
          );
        }

        test('test same object exception', () async {
          expect(objectB, selectedEnum.exception());
        });

        test('code test', () async {
          expect(selectedEnum.code, HttpStatus.methodFailure.code);
        });

        test('exception() default test', () async {
          expect(throwCustomDefaultException, throwsException);
          expect(
            throwCustomDefaultException,
            throwsA(isA<MethodFailureHttpException>()),
          );
        });

        test('exception() custom test', () async {
          expect(throwCustomDataException, throwsException);
          expect(
            throwCustomDataException,
            throwsA(isA<MethodFailureHttpException>()),
          );
        });
      });
      group('misdirectedRequest_421', () {
        const selectedEnum = HttpStatus.misdirectedRequest;
        final HttpException objectB =
            HttpStatus.fromCode(HttpStatus.misdirectedRequest.code).exception();

        Never throwCustomDefaultException() {
          throw selectedEnum.exception();
        }

        Never throwCustomDataException() {
          throw selectedEnum.exception(
            detail: "Not found key 'foo' and 'bar' in JSON",
            data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
            uri: Uri.parse('https://example.org'),
          );
        }

        test('test same object exception', () async {
          expect(objectB, selectedEnum.exception());
        });

        test('code test', () async {
          expect(selectedEnum.code, HttpStatus.misdirectedRequest.code);
        });

        test('exception() default test', () async {
          expect(throwCustomDefaultException, throwsException);
          expect(
            throwCustomDefaultException,
            throwsA(isA<MisdirectedRequestHttpException>()),
          );
        });

        test('exception() custom test', () async {
          expect(throwCustomDataException, throwsException);
          expect(
            throwCustomDataException,
            throwsA(isA<MisdirectedRequestHttpException>()),
          );
        });
      });
      group('unprocessableEntity_422', () {
        const selectedEnum = HttpStatus.unprocessableEntity;
        final HttpException objectB =
            HttpStatus.fromCode(HttpStatus.unprocessableEntity.code)
                .exception();

        Never throwCustomDefaultException() {
          throw selectedEnum.exception();
        }

        Never throwCustomDataException() {
          throw selectedEnum.exception(
            detail: "Not found key 'foo' and 'bar' in JSON",
            data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
            uri: Uri.parse('https://example.org'),
          );
        }

        test('test same object exception', () async {
          expect(objectB, selectedEnum.exception());
        });

        test('code test', () async {
          expect(selectedEnum.code, HttpStatus.unprocessableEntity.code);
        });

        test('exception() default test', () async {
          expect(throwCustomDefaultException, throwsException);
          expect(
            throwCustomDefaultException,
            throwsA(isA<UnprocessableEntityHttpException>()),
          );
        });

        test('exception() custom test', () async {
          expect(throwCustomDataException, throwsException);
          expect(
            throwCustomDataException,
            throwsA(isA<UnprocessableEntityHttpException>()),
          );
        });
      });
      group('locked_423', () {
        const selectedEnum = HttpStatus.locked;
        final HttpException objectB =
            HttpStatus.fromCode(HttpStatus.locked.code).exception();

        Never throwCustomDefaultException() {
          throw selectedEnum.exception();
        }

        Never throwCustomDataException() {
          throw selectedEnum.exception(
            detail: "Not found key 'foo' and 'bar' in JSON",
            data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
            uri: Uri.parse('https://example.org'),
          );
        }

        test('test same object exception', () async {
          expect(objectB, selectedEnum.exception());
        });

        test('code test', () async {
          expect(selectedEnum.code, HttpStatus.locked.code);
        });

        test('exception() default test', () async {
          expect(throwCustomDefaultException, throwsException);
          expect(
            throwCustomDefaultException,
            throwsA(isA<LockedHttpException>()),
          );
        });

        test('exception() custom test', () async {
          expect(throwCustomDataException, throwsException);
          expect(throwCustomDataException, throwsA(isA<LockedHttpException>()));
        });
      });
      group('failedDependency_424', () {
        const selectedEnum = HttpStatus.failedDependency;
        final HttpException objectB =
            HttpStatus.fromCode(HttpStatus.failedDependency.code).exception();

        Never throwCustomDefaultException() {
          throw selectedEnum.exception();
        }

        Never throwCustomDataException() {
          throw selectedEnum.exception(
            detail: "Not found key 'foo' and 'bar' in JSON",
            data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
            uri: Uri.parse('https://example.org'),
          );
        }

        test('test same object exception', () async {
          expect(objectB, selectedEnum.exception());
        });

        test('code test', () async {
          expect(selectedEnum.code, HttpStatus.failedDependency.code);
        });

        test('exception() default test', () async {
          expect(throwCustomDefaultException, throwsException);
          expect(
            throwCustomDefaultException,
            throwsA(isA<FailedDependencyHttpException>()),
          );
        });

        test('exception() custom test', () async {
          expect(throwCustomDataException, throwsException);
          expect(
            throwCustomDataException,
            throwsA(isA<FailedDependencyHttpException>()),
          );
        });
      });
      group('upgradeRequired_426', () {
        const selectedEnum = HttpStatus.upgradeRequired;
        final HttpException objectB =
            HttpStatus.fromCode(HttpStatus.upgradeRequired.code).exception();

        Never throwCustomDefaultException() {
          throw selectedEnum.exception();
        }

        Never throwCustomDataException() {
          throw selectedEnum.exception(
            detail: "Not found key 'foo' and 'bar' in JSON",
            data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
            uri: Uri.parse('https://example.org'),
          );
        }

        test('test same object exception', () async {
          expect(objectB, selectedEnum.exception());
        });

        test('code test', () async {
          expect(selectedEnum.code, HttpStatus.upgradeRequired.code);
        });

        test('exception() default test', () async {
          expect(throwCustomDefaultException, throwsException);
          expect(
            throwCustomDefaultException,
            throwsA(isA<UpgradeRequiredHttpException>()),
          );
        });

        test('exception() custom test', () async {
          expect(throwCustomDataException, throwsException);
          expect(
            throwCustomDataException,
            throwsA(isA<UpgradeRequiredHttpException>()),
          );
        });
      });
      group('preconditionRequired_428', () {
        const selectedEnum = HttpStatus.preconditionRequired;
        final HttpException objectB =
            HttpStatus.fromCode(HttpStatus.preconditionRequired.code)
                .exception();

        Never throwCustomDefaultException() {
          throw selectedEnum.exception();
        }

        Never throwCustomDataException() {
          throw selectedEnum.exception(
            detail: "Not found key 'foo' and 'bar' in JSON",
            data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
            uri: Uri.parse('https://example.org'),
          );
        }

        test('test same object exception', () async {
          expect(objectB, selectedEnum.exception());
        });

        test('code test', () async {
          expect(selectedEnum.code, HttpStatus.preconditionRequired.code);
        });

        test('exception() default test', () async {
          expect(throwCustomDefaultException, throwsException);
          expect(
            throwCustomDefaultException,
            throwsA(isA<PreconditionRequiredHttpException>()),
          );
        });

        test('exception() custom test', () async {
          expect(throwCustomDataException, throwsException);
          expect(
            throwCustomDataException,
            throwsA(isA<PreconditionRequiredHttpException>()),
          );
        });
      });
      group('tooManyRequests_429', () {
        const selectedEnum = HttpStatus.tooManyRequests;
        final HttpException objectB =
            HttpStatus.fromCode(HttpStatus.tooManyRequests.code).exception();

        Never throwCustomDefaultException() {
          throw selectedEnum.exception();
        }

        Never throwCustomDataException() {
          throw selectedEnum.exception(
            detail: "Not found key 'foo' and 'bar' in JSON",
            data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
            uri: Uri.parse('https://example.org'),
          );
        }

        test('test same object exception', () async {
          expect(objectB, selectedEnum.exception());
        });

        test('code test', () async {
          expect(selectedEnum.code, HttpStatus.tooManyRequests.code);
        });

        test('exception() default test', () async {
          expect(throwCustomDefaultException, throwsException);
          expect(
            throwCustomDefaultException,
            throwsA(isA<TooManyRequestsHttpException>()),
          );
        });

        test('exception() custom test', () async {
          expect(throwCustomDataException, throwsException);
          expect(
            throwCustomDataException,
            throwsA(isA<TooManyRequestsHttpException>()),
          );
        });
      });
      group('requestHeaderFieldsTooLarge_431', () {
        const selectedEnum = HttpStatus.requestHeaderFieldsTooLarge;
        final HttpException objectB =
            HttpStatus.fromCode(HttpStatus.requestHeaderFieldsTooLarge.code)
                .exception();

        Never throwCustomDefaultException() {
          throw selectedEnum.exception();
        }

        Never throwCustomDataException() {
          throw selectedEnum.exception(
            detail: "Not found key 'foo' and 'bar' in JSON",
            data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
            uri: Uri.parse('https://example.org'),
          );
        }

        test('test same object exception', () async {
          expect(objectB, selectedEnum.exception());
        });

        test('code test', () async {
          expect(
            selectedEnum.code,
            HttpStatus.requestHeaderFieldsTooLarge.code,
          );
        });

        test('exception() default test', () async {
          expect(throwCustomDefaultException, throwsException);
          expect(
            throwCustomDefaultException,
            throwsA(isA<RequestHeaderFieldsTooLargeHttpException>()),
          );
        });

        test('exception() custom test', () async {
          expect(throwCustomDataException, throwsException);
          expect(
            throwCustomDataException,
            throwsA(isA<RequestHeaderFieldsTooLargeHttpException>()),
          );
        });
      });
      group('connectionClosedWithoutResponse_444', () {
        const selectedEnum = HttpStatus.connectionClosedWithoutResponse;
        final HttpException objectB =
            HttpStatus.fromCode(HttpStatus.connectionClosedWithoutResponse.code)
                .exception();

        Never throwCustomDefaultException() {
          throw selectedEnum.exception();
        }

        Never throwCustomDataException() {
          throw selectedEnum.exception(
            detail: "Not found key 'foo' and 'bar' in JSON",
            data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
            uri: Uri.parse('https://example.org'),
          );
        }

        test('test same object exception', () async {
          expect(objectB, selectedEnum.exception());
        });

        test('code test', () async {
          expect(
            selectedEnum.code,
            HttpStatus.connectionClosedWithoutResponse.code,
          );
        });

        test('exception() default test', () async {
          expect(throwCustomDefaultException, throwsException);
          expect(
            throwCustomDefaultException,
            throwsA(isA<ConnectionClosedWithoutResponseHttpException>()),
          );
        });

        test('exception() custom test', () async {
          expect(throwCustomDataException, throwsException);
          expect(
            throwCustomDataException,
            throwsA(isA<ConnectionClosedWithoutResponseHttpException>()),
          );
        });
      });
      group('unavailableForLegalReasons_451', () {
        const selectedEnum = HttpStatus.unavailableForLegalReasons;
        final HttpException objectB =
            HttpStatus.fromCode(HttpStatus.unavailableForLegalReasons.code)
                .exception();

        Never throwCustomDefaultException() {
          throw selectedEnum.exception();
        }

        Never throwCustomDataException() {
          throw selectedEnum.exception(
            detail: "Not found key 'foo' and 'bar' in JSON",
            data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
            uri: Uri.parse('https://example.org'),
          );
        }

        test('test same object exception', () async {
          expect(objectB, selectedEnum.exception());
        });

        test('code test', () async {
          expect(selectedEnum.code, HttpStatus.unavailableForLegalReasons.code);
        });

        test('exception() default test', () async {
          expect(throwCustomDefaultException, throwsException);
          expect(
            throwCustomDefaultException,
            throwsA(isA<UnavailableForLegalReasonsHttpException>()),
          );
        });

        test('exception() custom test', () async {
          expect(throwCustomDataException, throwsException);
          expect(
            throwCustomDataException,
            throwsA(isA<UnavailableForLegalReasonsHttpException>()),
          );
        });
      });
      group('clientClosedRequest_499', () {
        const selectedEnum = HttpStatus.clientClosedRequest;
        final HttpException objectB =
            HttpStatus.fromCode(HttpStatus.clientClosedRequest.code)
                .exception();

        Never throwCustomDefaultException() {
          throw selectedEnum.exception();
        }

        Never throwCustomDataException() {
          throw selectedEnum.exception(
            detail: "Not found key 'foo' and 'bar' in JSON",
            data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
            uri: Uri.parse('https://example.org'),
          );
        }

        test('test same object exception', () async {
          expect(objectB, selectedEnum.exception());
        });

        test('code test', () async {
          expect(selectedEnum.code, HttpStatus.clientClosedRequest.code);
        });

        test('exception() default test', () async {
          expect(throwCustomDefaultException, throwsException);
          expect(
            throwCustomDefaultException,
            throwsA(isA<ClientClosedRequestHttpException>()),
          );
        });

        test('exception() custom test', () async {
          expect(throwCustomDataException, throwsException);
          expect(
            throwCustomDataException,
            throwsA(isA<ClientClosedRequestHttpException>()),
          );
        });
      });
    });

    group('5xx', () {
      group('internalServerError_500', () {
        const selectedEnum = HttpStatus.internalServerError;
        final HttpException objectB =
            HttpStatus.fromCode(HttpStatus.internalServerError.code)
                .exception();

        Never throwCustomDefaultException() {
          throw selectedEnum.exception();
        }

        Never throwCustomDataException() {
          throw selectedEnum.exception(
            detail: "Not found key 'foo' and 'bar' in JSON",
            data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
            uri: Uri.parse('https://example.org'),
          );
        }

        test('test same object exception', () async {
          expect(objectB, selectedEnum.exception());
        });

        test('code test', () async {
          expect(selectedEnum.code, HttpStatus.internalServerError.code);
        });

        test('exception() default test', () async {
          expect(throwCustomDefaultException, throwsException);
          expect(
            throwCustomDefaultException,
            throwsA(isA<InternalServerErrorHttpException>()),
          );
        });

        test('exception() custom test', () async {
          expect(throwCustomDataException, throwsException);
          expect(
            throwCustomDataException,
            throwsA(isA<InternalServerErrorHttpException>()),
          );
        });
      });

      group('notImplemented_501', () {
        const selectedEnum = HttpStatus.notImplemented;
        final HttpException objectB =
            HttpStatus.fromCode(HttpStatus.notImplemented.code).exception();

        Never throwCustomDefaultException() {
          throw selectedEnum.exception();
        }

        Never throwCustomDataException() {
          throw selectedEnum.exception(
            detail: "Not found key 'foo' and 'bar' in JSON",
            data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
            uri: Uri.parse('https://example.org'),
          );
        }

        test('test same object exception', () async {
          expect(objectB, selectedEnum.exception());
        });

        test('code test', () async {
          expect(selectedEnum.code, HttpStatus.notImplemented.code);
        });

        test('exception() default test', () async {
          expect(throwCustomDefaultException, throwsException);
          expect(
            throwCustomDefaultException,
            throwsA(isA<NotImplementedHttpException>()),
          );
        });

        test('exception() custom test', () async {
          expect(throwCustomDataException, throwsException);
          expect(
            throwCustomDataException,
            throwsA(isA<NotImplementedHttpException>()),
          );
        });
      });

      group('badGateway_502', () {
        const selectedEnum = HttpStatus.badGateway;
        final HttpException objectB =
            HttpStatus.fromCode(HttpStatus.badGateway.code).exception();

        Never throwCustomDefaultException() {
          throw selectedEnum.exception();
        }

        Never throwCustomDataException() {
          throw selectedEnum.exception(
            detail: "Not found key 'foo' and 'bar' in JSON",
            data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
            uri: Uri.parse('https://example.org'),
          );
        }

        test('test same object exception', () async {
          expect(objectB, selectedEnum.exception());
        });

        test('code test', () async {
          expect(selectedEnum.code, HttpStatus.badGateway.code);
        });

        test('exception() default test', () async {
          expect(throwCustomDefaultException, throwsException);
          expect(
            throwCustomDefaultException,
            throwsA(isA<BadGatewayHttpException>()),
          );
        });

        test('exception() custom test', () async {
          expect(throwCustomDataException, throwsException);
          expect(
            throwCustomDataException,
            throwsA(isA<BadGatewayHttpException>()),
          );
        });
      });

      group('serviceUnavailable_503', () {
        const selectedEnum = HttpStatus.serviceUnavailable;
        final HttpException objectB =
            HttpStatus.fromCode(HttpStatus.serviceUnavailable.code).exception();

        Never throwCustomDefaultException() {
          throw selectedEnum.exception();
        }

        Never throwCustomDataException() {
          throw selectedEnum.exception(
            detail: "Not found key 'foo' and 'bar' in JSON",
            data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
            uri: Uri.parse('https://example.org'),
          );
        }

        test('test same object exception', () async {
          expect(objectB, selectedEnum.exception());
        });

        test('code test', () async {
          expect(selectedEnum.code, HttpStatus.serviceUnavailable.code);
        });

        test('exception() default test', () async {
          expect(throwCustomDefaultException, throwsException);
          expect(
            throwCustomDefaultException,
            throwsA(isA<ServiceUnavailableHttpException>()),
          );
        });

        test('exception() custom test', () async {
          expect(throwCustomDataException, throwsException);
          expect(
            throwCustomDataException,
            throwsA(isA<ServiceUnavailableHttpException>()),
          );
        });
      });

      group('gatewayTimeout_504', () {
        const selectedEnum = HttpStatus.gatewayTimeout;
        final HttpException objectB =
            HttpStatus.fromCode(HttpStatus.gatewayTimeout.code).exception();

        Never throwCustomDefaultException() {
          throw selectedEnum.exception();
        }

        Never throwCustomDataException() {
          throw selectedEnum.exception(
            detail: "Not found key 'foo' and 'bar' in JSON",
            data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
            uri: Uri.parse('https://example.org'),
          );
        }

        test('test same object exception', () async {
          expect(objectB, selectedEnum.exception());
        });

        test('code test', () async {
          expect(selectedEnum.code, HttpStatus.gatewayTimeout.code);
        });

        test('exception() default test', () async {
          expect(throwCustomDefaultException, throwsException);
          expect(
            throwCustomDefaultException,
            throwsA(isA<GatewayTimeoutHttpException>()),
          );
        });

        test('exception() custom test', () async {
          expect(throwCustomDataException, throwsException);
          expect(
            throwCustomDataException,
            throwsA(isA<GatewayTimeoutHttpException>()),
          );
        });
      });

      group('httpVersionNotSupported_505', () {
        const selectedEnum = HttpStatus.httpVersionNotSupported;
        final HttpException objectB =
            HttpStatus.fromCode(HttpStatus.httpVersionNotSupported.code)
                .exception();

        Never throwCustomDefaultException() {
          throw selectedEnum.exception();
        }

        Never throwCustomDataException() {
          throw selectedEnum.exception(
            detail: "Not found key 'foo' and 'bar' in JSON",
            data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
            uri: Uri.parse('https://example.org'),
          );
        }

        test('test same object exception', () async {
          expect(objectB, selectedEnum.exception());
        });

        test('code test', () async {
          expect(selectedEnum.code, HttpStatus.httpVersionNotSupported.code);
        });

        test('exception() default test', () async {
          expect(throwCustomDefaultException, throwsException);
          expect(
            throwCustomDefaultException,
            throwsA(isA<HttpVersionNotSupportedHttpException>()),
          );
        });

        test('exception() custom test', () async {
          expect(throwCustomDataException, throwsException);
          expect(
            throwCustomDataException,
            throwsA(isA<HttpVersionNotSupportedHttpException>()),
          );
        });
      });

      group('insufficientStorage_507', () {
        const selectedEnum = HttpStatus.insufficientStorage;
        final HttpException objectB =
            HttpStatus.fromCode(HttpStatus.insufficientStorage.code)
                .exception();

        Never throwCustomDefaultException() {
          throw selectedEnum.exception();
        }

        Never throwCustomDataException() {
          throw selectedEnum.exception(
            detail: "Not found key 'foo' and 'bar' in JSON",
            data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
            uri: Uri.parse('https://example.org'),
          );
        }

        test('test same object exception', () async {
          expect(objectB, selectedEnum.exception());
        });

        test('code test', () async {
          expect(selectedEnum.code, HttpStatus.insufficientStorage.code);
        });

        test('exception() default test', () async {
          expect(throwCustomDefaultException, throwsException);
          expect(
            throwCustomDefaultException,
            throwsA(isA<InsufficientStorageHttpException>()),
          );
        });

        test('exception() custom test', () async {
          expect(throwCustomDataException, throwsException);
          expect(
            throwCustomDataException,
            throwsA(isA<InsufficientStorageHttpException>()),
          );
        });
      });

      group('networkAuthenticationRequired_511', () {
        const selectedEnum = HttpStatus.networkAuthenticationRequired;
        final HttpException objectB =
            HttpStatus.fromCode(HttpStatus.networkAuthenticationRequired.code)
                .exception();

        Never throwCustomDefaultException() {
          throw selectedEnum.exception();
        }

        Never throwCustomDataException() {
          throw selectedEnum.exception(
            detail: "Not found key 'foo' and 'bar' in JSON",
            data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
            uri: Uri.parse('https://example.org'),
          );
        }

        test('test same object exception', () async {
          expect(objectB, selectedEnum.exception());
        });

        test('code test', () async {
          expect(
            selectedEnum.code,
            HttpStatus.networkAuthenticationRequired.code,
          );
        });

        test('exception() default test', () async {
          expect(throwCustomDefaultException, throwsException);
          expect(
            throwCustomDefaultException,
            throwsA(isA<NetworkAuthenticationRequiredHttpException>()),
          );
        });

        test('exception() custom test', () async {
          expect(throwCustomDataException, throwsException);
          expect(
            throwCustomDataException,
            throwsA(isA<NetworkAuthenticationRequiredHttpException>()),
          );
        });
      });
    });
  });
}
