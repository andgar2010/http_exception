import 'package:http_exception/http_exception.dart';
import 'package:http_status/http_status.dart';
import 'package:test/test.dart';

void main() {
  group('IntHttpStatus Extension', () {
    group('3xx', () {
      group('multipleChoices_300', () {
        final int selectedInt = HttpStatus.multipleChoices.code;
        final HttpException objectB =
            HttpStatus.fromCode(HttpStatus.multipleChoices.code).exception();

        Never throwCustomDefaultException() {
          throw selectedInt.exception();
        }

        Never throwCustomDataException() {
          throw selectedInt.exception(
            detail: "Not found key 'foo' and 'bar' in JSON",
            data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
            uri: Uri.parse('https://example.org'),
          );
        }

        test('test same object exception', () async {
          expect(objectB, selectedInt.exception());
        });

        test('code test', () async {
          expect(selectedInt, HttpStatus.multipleChoices.code);
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
        final int selectedInt = HttpStatus.badRequest.code;
        final HttpException objectB =
            HttpStatus.fromCode(HttpStatus.badRequest.code).exception();

        Never throwCustomDefaultException() {
          throw selectedInt.exception();
        }

        Never throwCustomDataException() {
          throw selectedInt.exception(
            detail: "Not found key 'foo' and 'bar' in JSON",
            data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
            uri: Uri.parse('https://example.org'),
          );
        }

        test('test same object exception', () async {
          expect(objectB, selectedInt.exception());
        });

        test('code test', () async {
          expect(selectedInt, HttpStatus.badRequest.code);
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
        final int selectedInt = HttpStatus.unauthorized.code;
        final HttpException objectB =
            HttpStatus.fromCode(HttpStatus.unauthorized.code).exception();

        Never throwCustomDefaultException() {
          throw selectedInt.exception();
        }

        Never throwCustomDataException() {
          throw selectedInt.exception(
            detail: "Not found key 'foo' and 'bar' in JSON",
            data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
            uri: Uri.parse('https://example.org'),
          );
        }

        test('test same object exception', () async {
          expect(objectB, selectedInt.exception());
        });

        test('code test', () async {
          expect(selectedInt, HttpStatus.unauthorized.code);
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
        final int selectedInt = HttpStatus.paymentRequired.code;
        final HttpException objectB =
            HttpStatus.fromCode(HttpStatus.paymentRequired.code).exception();

        Never throwCustomDefaultException() {
          throw selectedInt.exception();
        }

        Never throwCustomDataException() {
          throw selectedInt.exception(
            detail: "Not found key 'foo' and 'bar' in JSON",
            data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
            uri: Uri.parse('https://example.org'),
          );
        }

        test('test same object exception', () async {
          expect(objectB, selectedInt.exception());
        });

        test('code test', () async {
          expect(selectedInt, HttpStatus.paymentRequired.code);
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
        final int selectedInt = HttpStatus.forbidden.code;
        final HttpException objectB =
            HttpStatus.fromCode(HttpStatus.forbidden.code).exception();

        Never throwCustomDefaultException() {
          throw selectedInt.exception();
        }

        Never throwCustomDataException() {
          throw selectedInt.exception(
            detail: "Not found key 'foo' and 'bar' in JSON",
            data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
            uri: Uri.parse('https://example.org'),
          );
        }

        test('test same object exception', () async {
          expect(objectB, selectedInt.exception());
        });

        test('code test', () async {
          expect(selectedInt, HttpStatus.forbidden.code);
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
        final int selectedInt = HttpStatus.notFound.code;
        final HttpException objectB =
            HttpStatus.fromCode(HttpStatus.notFound.code).exception();

        Never throwCustomDefaultException() {
          throw selectedInt.exception();
        }

        Never throwCustomDataException() {
          throw selectedInt.exception(
            detail: "Not found key 'foo' and 'bar' in JSON",
            data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
            uri: Uri.parse('https://example.org'),
          );
        }

        test('test same object exception', () async {
          expect(objectB, selectedInt.exception());
        });

        test('code test', () async {
          expect(selectedInt, HttpStatus.notFound.code);
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
        final int selectedInt = HttpStatus.methodNotAllowed.code;
        final HttpException objectB =
            HttpStatus.fromCode(HttpStatus.methodNotAllowed.code).exception();

        Never throwCustomDefaultException() {
          throw selectedInt.exception();
        }

        Never throwCustomDataException() {
          throw selectedInt.exception(
            detail: "Not found key 'foo' and 'bar' in JSON",
            data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
            uri: Uri.parse('https://example.org'),
          );
        }

        test('test same object exception', () async {
          expect(objectB, selectedInt.exception());
        });

        test('code test', () async {
          expect(selectedInt, HttpStatus.methodNotAllowed.code);
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
        final int selectedInt = HttpStatus.notAcceptable.code;
        final HttpException objectB =
            HttpStatus.fromCode(HttpStatus.notAcceptable.code).exception();

        Never throwCustomDefaultException() {
          throw selectedInt.exception();
        }

        Never throwCustomDataException() {
          throw selectedInt.exception(
            detail: "Not found key 'foo' and 'bar' in JSON",
            data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
            uri: Uri.parse('https://example.org'),
          );
        }

        test('test same object exception', () async {
          expect(objectB, selectedInt.exception());
        });

        test('code test', () async {
          expect(selectedInt, HttpStatus.notAcceptable.code);
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
        final int selectedInt = HttpStatus.proxyAuthenticationRequired.code;
        final HttpException objectB =
            HttpStatus.fromCode(HttpStatus.proxyAuthenticationRequired.code)
                .exception();

        Never throwCustomDefaultException() {
          throw selectedInt.exception();
        }

        Never throwCustomDataException() {
          throw selectedInt.exception(
            detail: "Not found key 'foo' and 'bar' in JSON",
            data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
            uri: Uri.parse('https://example.org'),
          );
        }

        test('test same object exception', () async {
          expect(objectB, selectedInt.exception());
        });

        test('code test', () async {
          expect(
            selectedInt,
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
        final int selectedInt = HttpStatus.requestTimeout.code;
        final HttpException objectB =
            HttpStatus.fromCode(HttpStatus.requestTimeout.code).exception();

        Never throwCustomDefaultException() {
          throw selectedInt.exception();
        }

        Never throwCustomDataException() {
          throw selectedInt.exception(
            detail: "Not found key 'foo' and 'bar' in JSON",
            data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
            uri: Uri.parse('https://example.org'),
          );
        }

        test('test same object exception', () async {
          expect(objectB, selectedInt.exception());
        });

        test('code test', () async {
          expect(selectedInt, HttpStatus.requestTimeout.code);
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
        final int selectedInt = HttpStatus.conflict.code;
        final HttpException objectB =
            HttpStatus.fromCode(HttpStatus.conflict.code).exception();

        Never throwCustomDefaultException() {
          throw selectedInt.exception();
        }

        Never throwCustomDataException() {
          throw selectedInt.exception(
            detail: "Not found key 'foo' and 'bar' in JSON",
            data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
            uri: Uri.parse('https://example.org'),
          );
        }

        test('test same object exception', () async {
          expect(objectB, selectedInt.exception());
        });

        test('code test', () async {
          expect(selectedInt, HttpStatus.conflict.code);
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
        final int selectedInt = HttpStatus.gone.code;
        final HttpException objectB =
            HttpStatus.fromCode(HttpStatus.gone.code).exception();

        Never throwCustomDefaultException() {
          throw selectedInt.exception();
        }

        Never throwCustomDataException() {
          throw selectedInt.exception(
            detail: "Not found key 'foo' and 'bar' in JSON",
            data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
            uri: Uri.parse('https://example.org'),
          );
        }

        test('test same object exception', () async {
          expect(objectB, selectedInt.exception());
        });

        test('code test', () async {
          expect(selectedInt, HttpStatus.gone.code);
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
        final int selectedInt = HttpStatus.lengthRequired.code;
        final HttpException objectB =
            HttpStatus.fromCode(HttpStatus.lengthRequired.code).exception();

        Never throwCustomDefaultException() {
          throw selectedInt.exception();
        }

        Never throwCustomDataException() {
          throw selectedInt.exception(
            detail: "Not found key 'foo' and 'bar' in JSON",
            data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
            uri: Uri.parse('https://example.org'),
          );
        }

        test('test same object exception', () async {
          expect(objectB, selectedInt.exception());
        });

        test('code test', () async {
          expect(selectedInt, HttpStatus.lengthRequired.code);
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
        final int selectedInt = HttpStatus.preconditionFailed.code;
        final HttpException objectB =
            HttpStatus.fromCode(HttpStatus.preconditionFailed.code).exception();

        Never throwCustomDefaultException() {
          throw selectedInt.exception();
        }

        Never throwCustomDataException() {
          throw selectedInt.exception(
            detail: "Not found key 'foo' and 'bar' in JSON",
            data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
            uri: Uri.parse('https://example.org'),
          );
        }

        test('test same object exception', () async {
          expect(objectB, selectedInt.exception());
        });

        test('code test', () async {
          expect(selectedInt, HttpStatus.preconditionFailed.code);
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
        final int selectedInt = HttpStatus.requestEntityTooLarge.code;
        final HttpException objectB =
            HttpStatus.fromCode(HttpStatus.requestEntityTooLarge.code)
                .exception();

        Never throwCustomDefaultException() {
          throw selectedInt.exception();
        }

        Never throwCustomDataException() {
          throw selectedInt.exception(
            detail: "Not found key 'foo' and 'bar' in JSON",
            data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
            uri: Uri.parse('https://example.org'),
          );
        }

        test('test same object exception', () async {
          expect(objectB, selectedInt.exception());
        });

        test('code test', () async {
          expect(selectedInt, HttpStatus.requestEntityTooLarge.code);
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
        final int selectedInt = HttpStatus.requestUriTooLong.code;
        final HttpException objectB =
            HttpStatus.fromCode(HttpStatus.requestUriTooLong.code).exception();

        Never throwCustomDefaultException() {
          throw selectedInt.exception();
        }

        Never throwCustomDataException() {
          throw selectedInt.exception(
            detail: "Not found key 'foo' and 'bar' in JSON",
            data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
            uri: Uri.parse('https://example.org'),
          );
        }

        test('test same object exception', () async {
          expect(objectB, selectedInt.exception());
        });

        test('code test', () async {
          expect(selectedInt, HttpStatus.requestUriTooLong.code);
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
        final int selectedInt = HttpStatus.unsupportedMediaType.code;
        final HttpException objectB =
            HttpStatus.fromCode(HttpStatus.unsupportedMediaType.code)
                .exception();

        Never throwCustomDefaultException() {
          throw selectedInt.exception();
        }

        Never throwCustomDataException() {
          throw selectedInt.exception(
            detail: "Not found key 'foo' and 'bar' in JSON",
            data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
            uri: Uri.parse('https://example.org'),
          );
        }

        test('test same object exception', () async {
          expect(objectB, selectedInt.exception());
        });

        test('code test', () async {
          expect(selectedInt, HttpStatus.unsupportedMediaType.code);
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
        final int selectedInt = HttpStatus.requestedRangeNotSatisfiable.code;
        final HttpException objectB =
            HttpStatus.fromCode(HttpStatus.requestedRangeNotSatisfiable.code)
                .exception();

        Never throwCustomDefaultException() {
          throw selectedInt.exception();
        }

        Never throwCustomDataException() {
          throw selectedInt.exception(
            detail: "Not found key 'foo' and 'bar' in JSON",
            data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
            uri: Uri.parse('https://example.org'),
          );
        }

        test('test same object exception', () async {
          expect(objectB, selectedInt.exception());
        });

        test('code test', () async {
          expect(
            selectedInt,
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
        final int selectedInt = HttpStatus.expectationFailed.code;
        final HttpException objectB =
            HttpStatus.fromCode(HttpStatus.expectationFailed.code).exception();

        Never throwCustomDefaultException() {
          throw selectedInt.exception();
        }

        Never throwCustomDataException() {
          throw selectedInt.exception(
            detail: "Not found key 'foo' and 'bar' in JSON",
            data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
            uri: Uri.parse('https://example.org'),
          );
        }

        test('test same object exception', () async {
          expect(objectB, selectedInt.exception());
        });

        test('code test', () async {
          expect(selectedInt, HttpStatus.expectationFailed.code);
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
        final int selectedInt = HttpStatus.imATeapot.code;
        final HttpException objectB =
            HttpStatus.fromCode(HttpStatus.imATeapot.code).exception();

        Never throwCustomDefaultException() {
          throw selectedInt.exception();
        }

        Never throwCustomDataException() {
          throw selectedInt.exception(
            detail: "Not found key 'foo' and 'bar' in JSON",
            data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
            uri: Uri.parse('https://example.org'),
          );
        }

        test('test same object exception', () async {
          expect(objectB, selectedInt.exception());
        });

        test('code test', () async {
          expect(selectedInt, HttpStatus.imATeapot.code);
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
        final int selectedInt = HttpStatus.insufficientSpaceOnResource.code;
        final HttpException objectB =
            HttpStatus.fromCode(HttpStatus.insufficientSpaceOnResource.code)
                .exception();

        Never throwCustomDefaultException() {
          throw selectedInt.exception();
        }

        Never throwCustomDataException() {
          throw selectedInt.exception(
            detail: "Not found key 'foo' and 'bar' in JSON",
            data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
            uri: Uri.parse('https://example.org'),
          );
        }

        test('test same object exception', () async {
          expect(objectB, selectedInt.exception());
        });

        test('code test', () async {
          expect(
            selectedInt,
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
        final int selectedInt = HttpStatus.methodFailure.code;
        final HttpException objectB =
            HttpStatus.fromCode(HttpStatus.methodFailure.code).exception();

        Never throwCustomDefaultException() {
          throw selectedInt.exception();
        }

        Never throwCustomDataException() {
          throw selectedInt.exception(
            detail: "Not found key 'foo' and 'bar' in JSON",
            data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
            uri: Uri.parse('https://example.org'),
          );
        }

        test('test same object exception', () async {
          expect(objectB, selectedInt.exception());
        });

        test('code test', () async {
          expect(selectedInt, HttpStatus.methodFailure.code);
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
        final int selectedInt = HttpStatus.misdirectedRequest.code;
        final HttpException objectB =
            HttpStatus.fromCode(HttpStatus.misdirectedRequest.code).exception();

        Never throwCustomDefaultException() {
          throw selectedInt.exception();
        }

        Never throwCustomDataException() {
          throw selectedInt.exception(
            detail: "Not found key 'foo' and 'bar' in JSON",
            data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
            uri: Uri.parse('https://example.org'),
          );
        }

        test('test same object exception', () async {
          expect(objectB, selectedInt.exception());
        });

        test('code test', () async {
          expect(selectedInt, HttpStatus.misdirectedRequest.code);
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
        final int selectedInt = HttpStatus.unprocessableEntity.code;
        final HttpException objectB =
            HttpStatus.fromCode(HttpStatus.unprocessableEntity.code)
                .exception();

        Never throwCustomDefaultException() {
          throw selectedInt.exception();
        }

        Never throwCustomDataException() {
          throw selectedInt.exception(
            detail: "Not found key 'foo' and 'bar' in JSON",
            data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
            uri: Uri.parse('https://example.org'),
          );
        }

        test('test same object exception', () async {
          expect(objectB, selectedInt.exception());
        });

        test('code test', () async {
          expect(selectedInt, HttpStatus.unprocessableEntity.code);
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
        final int selectedInt = HttpStatus.locked.code;
        final HttpException objectB =
            HttpStatus.fromCode(HttpStatus.locked.code).exception();

        Never throwCustomDefaultException() {
          throw selectedInt.exception();
        }

        Never throwCustomDataException() {
          throw selectedInt.exception(
            detail: "Not found key 'foo' and 'bar' in JSON",
            data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
            uri: Uri.parse('https://example.org'),
          );
        }

        test('test same object exception', () async {
          expect(objectB, selectedInt.exception());
        });

        test('code test', () async {
          expect(selectedInt, HttpStatus.locked.code);
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
        final int selectedInt = HttpStatus.failedDependency.code;
        final HttpException objectB =
            HttpStatus.fromCode(HttpStatus.failedDependency.code).exception();

        Never throwCustomDefaultException() {
          throw selectedInt.exception();
        }

        Never throwCustomDataException() {
          throw selectedInt.exception(
            detail: "Not found key 'foo' and 'bar' in JSON",
            data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
            uri: Uri.parse('https://example.org'),
          );
        }

        test('test same object exception', () async {
          expect(objectB, selectedInt.exception());
        });

        test('code test', () async {
          expect(selectedInt, HttpStatus.failedDependency.code);
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
        final int selectedInt = HttpStatus.upgradeRequired.code;
        final HttpException objectB =
            HttpStatus.fromCode(HttpStatus.upgradeRequired.code).exception();

        Never throwCustomDefaultException() {
          throw selectedInt.exception();
        }

        Never throwCustomDataException() {
          throw selectedInt.exception(
            detail: "Not found key 'foo' and 'bar' in JSON",
            data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
            uri: Uri.parse('https://example.org'),
          );
        }

        test('test same object exception', () async {
          expect(objectB, selectedInt.exception());
        });

        test('code test', () async {
          expect(selectedInt, HttpStatus.upgradeRequired.code);
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
        final int selectedInt = HttpStatus.preconditionRequired.code;
        final HttpException objectB =
            HttpStatus.fromCode(HttpStatus.preconditionRequired.code)
                .exception();

        Never throwCustomDefaultException() {
          throw selectedInt.exception();
        }

        Never throwCustomDataException() {
          throw selectedInt.exception(
            detail: "Not found key 'foo' and 'bar' in JSON",
            data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
            uri: Uri.parse('https://example.org'),
          );
        }

        test('test same object exception', () async {
          expect(objectB, selectedInt.exception());
        });

        test('code test', () async {
          expect(selectedInt, HttpStatus.preconditionRequired.code);
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
        final int selectedInt = HttpStatus.tooManyRequests.code;
        final HttpException objectB =
            HttpStatus.fromCode(HttpStatus.tooManyRequests.code).exception();

        Never throwCustomDefaultException() {
          throw selectedInt.exception();
        }

        Never throwCustomDataException() {
          throw selectedInt.exception(
            detail: "Not found key 'foo' and 'bar' in JSON",
            data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
            uri: Uri.parse('https://example.org'),
          );
        }

        test('test same object exception', () async {
          expect(objectB, selectedInt.exception());
        });

        test('code test', () async {
          expect(selectedInt, HttpStatus.tooManyRequests.code);
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
        final int selectedInt = HttpStatus.requestHeaderFieldsTooLarge.code;
        final HttpException objectB =
            HttpStatus.fromCode(HttpStatus.requestHeaderFieldsTooLarge.code)
                .exception();

        Never throwCustomDefaultException() {
          throw selectedInt.exception();
        }

        Never throwCustomDataException() {
          throw selectedInt.exception(
            detail: "Not found key 'foo' and 'bar' in JSON",
            data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
            uri: Uri.parse('https://example.org'),
          );
        }

        test('test same object exception', () async {
          expect(objectB, selectedInt.exception());
        });

        test('code test', () async {
          expect(
            selectedInt,
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
        final int selectedInt = HttpStatus.connectionClosedWithoutResponse.code;

        final HttpException objectB =
            HttpStatus.fromCode(HttpStatus.connectionClosedWithoutResponse.code)
                .exception();

        Never throwCustomDefaultException() {
          throw selectedInt.exception();
        }

        Never throwCustomDataException() {
          throw selectedInt.exception(
            detail: "Not found key 'foo' and 'bar' in JSON",
            data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
            uri: Uri.parse('https://example.org'),
          );
        }

        test('test same object exception', () async {
          expect(objectB, selectedInt.exception());
        });

        test('code test', () async {
          expect(
            selectedInt,
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
        final int selectedInt = HttpStatus.unavailableForLegalReasons.code;
        final HttpException objectB =
            HttpStatus.fromCode(HttpStatus.unavailableForLegalReasons.code)
                .exception();

        Never throwCustomDefaultException() {
          throw selectedInt.exception();
        }

        Never throwCustomDataException() {
          throw selectedInt.exception(
            detail: "Not found key 'foo' and 'bar' in JSON",
            data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
            uri: Uri.parse('https://example.org'),
          );
        }

        test('test same object exception', () async {
          expect(objectB, selectedInt.exception());
        });

        test('code test', () async {
          expect(selectedInt, HttpStatus.unavailableForLegalReasons.code);
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
        final int selectedInt = HttpStatus.clientClosedRequest.code;
        final HttpException objectB =
            HttpStatus.fromCode(HttpStatus.clientClosedRequest.code)
                .exception();

        Never throwCustomDefaultException() {
          throw selectedInt.exception();
        }

        Never throwCustomDataException() {
          throw selectedInt.exception(
            detail: "Not found key 'foo' and 'bar' in JSON",
            data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
            uri: Uri.parse('https://example.org'),
          );
        }

        test('test same object exception', () async {
          expect(objectB, selectedInt.exception());
        });

        test('code test', () async {
          expect(selectedInt, HttpStatus.clientClosedRequest.code);
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
        final int selectedInt = HttpStatus.internalServerError.code;
        final HttpException objectB =
            HttpStatus.fromCode(HttpStatus.internalServerError.code)
                .exception();

        Never throwCustomDefaultException() {
          throw selectedInt.exception();
        }

        Never throwCustomDataException() {
          throw selectedInt.exception(
            detail: "Not found key 'foo' and 'bar' in JSON",
            data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
            uri: Uri.parse('https://example.org'),
          );
        }

        test('test same object exception', () async {
          expect(objectB, selectedInt.exception());
        });

        test('code test', () async {
          expect(selectedInt, HttpStatus.internalServerError.code);
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
        final int selectedInt = HttpStatus.notImplemented.code;
        final HttpException objectB =
            HttpStatus.fromCode(HttpStatus.notImplemented.code).exception();

        Never throwCustomDefaultException() {
          throw selectedInt.exception();
        }

        Never throwCustomDataException() {
          throw selectedInt.exception(
            detail: "Not found key 'foo' and 'bar' in JSON",
            data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
            uri: Uri.parse('https://example.org'),
          );
        }

        test('test same object exception', () async {
          expect(objectB, selectedInt.exception());
        });

        test('code test', () async {
          expect(selectedInt, HttpStatus.notImplemented.code);
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
        final int selectedInt = HttpStatus.badGateway.code;
        final HttpException objectB =
            HttpStatus.fromCode(HttpStatus.badGateway.code).exception();

        Never throwCustomDefaultException() {
          throw selectedInt.exception();
        }

        Never throwCustomDataException() {
          throw selectedInt.exception(
            detail: "Not found key 'foo' and 'bar' in JSON",
            data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
            uri: Uri.parse('https://example.org'),
          );
        }

        test('test same object exception', () async {
          expect(objectB, selectedInt.exception());
        });

        test('code test', () async {
          expect(selectedInt, HttpStatus.badGateway.code);
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
        final int selectedInt = HttpStatus.serviceUnavailable.code;
        final HttpException objectB =
            HttpStatus.fromCode(HttpStatus.serviceUnavailable.code).exception();

        Never throwCustomDefaultException() {
          throw selectedInt.exception();
        }

        Never throwCustomDataException() {
          throw selectedInt.exception(
            detail: "Not found key 'foo' and 'bar' in JSON",
            data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
            uri: Uri.parse('https://example.org'),
          );
        }

        test('test same object exception', () async {
          expect(objectB, selectedInt.exception());
        });

        test('code test', () async {
          expect(selectedInt, HttpStatus.serviceUnavailable.code);
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
        final int selectedInt = HttpStatus.gatewayTimeout.code;
        final HttpException objectB =
            HttpStatus.fromCode(HttpStatus.gatewayTimeout.code).exception();

        Never throwCustomDefaultException() {
          throw selectedInt.exception();
        }

        Never throwCustomDataException() {
          throw selectedInt.exception(
            detail: "Not found key 'foo' and 'bar' in JSON",
            data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
            uri: Uri.parse('https://example.org'),
          );
        }

        test('test same object exception', () async {
          expect(objectB, selectedInt.exception());
        });

        test('code test', () async {
          expect(selectedInt, HttpStatus.gatewayTimeout.code);
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
        final int selectedInt = HttpStatus.httpVersionNotSupported.code;
        final HttpException objectB =
            HttpStatus.fromCode(HttpStatus.httpVersionNotSupported.code)
                .exception();

        Never throwCustomDefaultException() {
          throw selectedInt.exception();
        }

        Never throwCustomDataException() {
          throw selectedInt.exception(
            detail: "Not found key 'foo' and 'bar' in JSON",
            data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
            uri: Uri.parse('https://example.org'),
          );
        }

        test('test same object exception', () async {
          expect(objectB, selectedInt.exception());
        });

        test('code test', () async {
          expect(selectedInt, HttpStatus.httpVersionNotSupported.code);
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

      group('variantAlsoNegotiates_506', () {
        final int selectedInt = HttpStatus.variantAlsoNegotiates.code;
        final HttpException objectB =
            HttpStatus.fromCode(HttpStatus.variantAlsoNegotiates.code)
                .exception();

        Never throwCustomDefaultException() {
          throw selectedInt.exception();
        }

        Never throwCustomDataException() {
          throw selectedInt.exception(
            detail: "Not found key 'foo' and 'bar' in JSON",
            data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
            uri: Uri.parse('https://example.org'),
          );
        }

        test('test same object exception', () async {
          expect(objectB, selectedInt.exception());
        });

        test('code test', () async {
          expect(selectedInt, HttpStatus.variantAlsoNegotiates.code);
        });

        test('exception() default test', () async {
          expect(throwCustomDefaultException, throwsException);
          expect(
            throwCustomDefaultException,
            throwsA(isA<VariantAlsoNegotiatesHttpException>()),
          );
        });

        test('exception() custom test', () async {
          expect(throwCustomDataException, throwsException);
          expect(
            throwCustomDataException,
            throwsA(isA<VariantAlsoNegotiatesHttpException>()),
          );
        });
      });
      group('insufficientStorage_507', () {
        final int selectedInt = HttpStatus.insufficientStorage.code;
        final HttpException objectB =
            HttpStatus.fromCode(HttpStatus.insufficientStorage.code)
                .exception();

        Never throwCustomDefaultException() {
          throw selectedInt.exception();
        }

        Never throwCustomDataException() {
          throw selectedInt.exception(
            detail: "Not found key 'foo' and 'bar' in JSON",
            data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
            uri: Uri.parse('https://example.org'),
          );
        }

        test('test same object exception', () async {
          expect(objectB, selectedInt.exception());
        });

        test('code test', () async {
          expect(selectedInt, HttpStatus.insufficientStorage.code);
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
      group('loopDetected_508', () {
        final int selectedInt = HttpStatus.loopDetected.code;
        final HttpException objectB =
            HttpStatus.fromCode(HttpStatus.loopDetected.code).exception();

        Never throwCustomDefaultException() {
          throw selectedInt.exception();
        }

        Never throwCustomDataException() {
          throw selectedInt.exception(
            detail: "Not found key 'foo' and 'bar' in JSON",
            data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
            uri: Uri.parse('https://example.org'),
          );
        }

        test('test same object exception', () async {
          expect(objectB, selectedInt.exception());
        });

        test('code test', () async {
          expect(selectedInt, HttpStatus.loopDetected.code);
        });

        test('exception() default test', () async {
          expect(throwCustomDefaultException, throwsException);
          expect(
            throwCustomDefaultException,
            throwsA(isA<LoopDetectedHttpException>()),
          );
        });

        test('exception() custom test', () async {
          expect(throwCustomDataException, throwsException);
          expect(
            throwCustomDataException,
            throwsA(isA<LoopDetectedHttpException>()),
          );
        });
      });
      group('notExtended_510', () {
        final int selectedInt = HttpStatus.notExtended.code;
        final HttpException objectB =
            HttpStatus.fromCode(HttpStatus.notExtended.code).exception();

        Never throwCustomDefaultException() {
          throw selectedInt.exception();
        }

        Never throwCustomDataException() {
          throw selectedInt.exception(
            detail: "Not found key 'foo' and 'bar' in JSON",
            data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
            uri: Uri.parse('https://example.org'),
          );
        }

        test('test same object exception', () async {
          expect(objectB, selectedInt.exception());
        });

        test('code test', () async {
          expect(selectedInt, HttpStatus.notExtended.code);
        });

        test('exception() default test', () async {
          expect(throwCustomDefaultException, throwsException);
          expect(
            throwCustomDefaultException,
            throwsA(isA<NotExtendedHttpException>()),
          );
        });

        test('exception() custom test', () async {
          expect(throwCustomDataException, throwsException);
          expect(
            throwCustomDataException,
            throwsA(isA<NotExtendedHttpException>()),
          );
        });
      });

      group('networkAuthenticationRequired_511', () {
        final int selectedInt = HttpStatus.networkAuthenticationRequired.code;
        final HttpException objectB =
            HttpStatus.fromCode(HttpStatus.networkAuthenticationRequired.code)
                .exception();

        Never throwCustomDefaultException() {
          throw selectedInt.exception();
        }

        Never throwCustomDataException() {
          throw selectedInt.exception(
            detail: "Not found key 'foo' and 'bar' in JSON",
            data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
            uri: Uri.parse('https://example.org'),
          );
        }

        test('test same object exception', () async {
          expect(objectB, selectedInt.exception());
        });

        test('code test', () async {
          expect(
            selectedInt,
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
    group('networkConnectTimeoutError_599', () {
      final int selectedInt = HttpStatus.networkConnectTimeoutError.code;
      final HttpException objectB =
          HttpStatus.fromCode(HttpStatus.networkConnectTimeoutError.code)
              .exception();

      Never throwCustomDefaultException() {
        throw selectedInt.exception();
      }

      Never throwCustomDataException() {
        throw selectedInt.exception(
          detail: "Not found key 'foo' and 'bar' in JSON",
          data: <String, dynamic>{'foo': 'foo value', 'bar': 'bar value'},
          uri: Uri.parse('https://example.org'),
        );
      }

      test('test same object exception', () async {
        expect(objectB, selectedInt.exception());
      });

      test('code test', () async {
        expect(
          selectedInt,
          HttpStatus.networkConnectTimeoutError.code,
        );
      });

      test('exception() default test', () async {
        expect(throwCustomDefaultException, throwsException);
        expect(
          throwCustomDefaultException,
          throwsA(isA<NetworkConnectTimeoutErrorHttpException>()),
        );
      });

      test('exception() custom test', () async {
        expect(throwCustomDataException, throwsException);
        expect(
          throwCustomDataException,
          throwsA(isA<NetworkConnectTimeoutErrorHttpException>()),
        );
      });
    });
  });
}
