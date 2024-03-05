# Changelog

## [2.0.0] - 2024-03-04

### Added - 2.0.0

- feat(extension): Add int HTTP status extension
  Introduced a new extension on the integer type to streamline the creation of HttpException instances based on HTTP status codes. This includes optional parameters for additional details, data payload, and URI.

  ```dart
  import 'package:http/http.dart' as http;
  import 'package:http_exception/http_exception.dart';
  import 'package:http_status/http_status.dart';

  void main() async {
    final Uri url = Uri.https('example.com', 'whatsit/create');
    final Map<String, String> body = <String, String>{
      'name': 'doodle',
      'color': 'blue',
    };

    final http.Response response = await http.post(url, body: body);

    final int statusCode = response.statusCode;

    // Http status code 200 - 299
    if (statusCode.isSuccessfulHttpStatusCode) {
      print(response.body);
    } else {
      // Automatically generate an HttpException based on the status code outside the 200-299 range
      final HttpException e = statusCode.exception(
        detail: 'Message Customized Detail Exception',
        data: body,
        uri: url,
      );
      print(e);
      // -> HttpException [404 Not Found]: Message Customized Detail Exception, uri = https://example.com/whatsit/create, HTTP data = {name: doodle, color: blue}
    }
  }
  ```

### Changed - 2.0.0

- **Deprecation and Exception Handling Refinements**
  - Replaced the deprecated of all class, streamlining the approach to exception handling.

| Code | HttpException (v0.2.2 - v1.x.x [Deprecated]) | HttpException (v1.x.x - v2.x.x)                |
| ---- | -------------------------------------------- | ---------------------------------------------- |
| 400  | BadRequestException()                        | BadRequestHttpException()                      |
| 401  | UnauthorizedException()                      | UnauthorizedHttpException()                    |
| 402  | PaymentRequiredException()                   | PaymentRequiredHttpException()                 |
| 403  | ForbiddenException()                         | ForbiddenHttpException()                       |
| 404  | NotFoundException()                          | NotFoundHttpException()                        |
| 405  | MethodNotAllowedException()                  | MethodNotAllowedHttpException()                |
| 406  | NotAcceptableException()                     | NotAcceptableHttpException()                   |
| 407  | -                                            | ProxyAuthenticationRequiredHttpException()     |
| 408  | -                                            | RequestTimeoutHttpException()                  |
| 409  | ConflictException()                          | ConflictHttpException()                        |
| 410  | GoneException()                              | GoneHttpException()                            |
| 411  | -                                            | LengthRequiredHttpException()                  |
| 412  | PreconditionFailedException()                | PreconditionFailedHttpException()              |
| 413  | -                                            | RequestTooLongHttpException()                  |
| 414  | -                                            | RequestUriTooLongHttpException()               |
| 415  | UnsupportedMediaTypeException()              | UnsupportedMediaTypeHttpException()            |
| 416  | -                                            | RequestedRangeNotSatisfiableHttpException()    |
| 417  | -                                            | ExpectationFailedHttpException()               |
| 418  | -                                            | ImATeapotHttpException()                       |
| 419  | -                                            | InsufficientSpaceOnResourceHttpException()     |
| 420  | -                                            | MethodFailureHttpException()                   |
| 421  | -                                            | MisdirectedRequestHttpException()              |
| 422  | -                                            | UnprocessableEntityHttpException()             |
| 423  | -                                            | LockedHttpException()                          |
| 424  | -                                            | FailedDependencyHttpException()                |
| 426  | -                                            | UpgradeRequiredHttpException()                 |
| 428  | -                                            | PreconditionRequiredHttpException()            |
| 429  | TooManyRequestsException()                   | TooManyRequestsHttpException()                 |
| 431  | -                                            | RequestHeaderFieldsTooLargeHttpException()     |
| 444  | -                                            | ConnectionClosedWithoutResponseHttpException() |
| 451  | -                                            | UnavailableForLegalReasonsHttpException()      |
| 499  | -                                            | ClientClosedRequestHttpException()             |
| 500  | -                                            | InternalServerErrorHttpException()             |
| 501  | NotImplementedException()                    | NotImplementedHttpException()                  |
| 502  | -                                            | BadGatewayHttpException()                      |
| 503  | ServiceUnavailableException()                | ServiceUnavailableHttpException()              |
| 504  | -                                            | GatewayTimeoutHttpException()                  |
| 505  | -                                            | HttpVersionNotSupportedHttpException()         |
| 506  | -                                            | VariantAlsoNegotiatesHttpException()           |
| 507  | -                                            | InsufficientStorageHttpException()             |
| 508  | -                                            | LoopDetectedHttpException()                    |
| 510  | -                                            | NotExtendedHttpException()                     |
| 511  | -                                            | NetworkAuthenticationRequiredHttpException()   |
| 599  | -                                            | NetworkConnectTimeoutErrorHttpException()      |

- **Simplification of HTTP Exception Classes**
  - Removed deprecated exception classes and simplified the constructor parameters of the remaining classes.
  This change reduces clutter and makes the exception handling mechanism more straightforward for Dart 3.

- **Dependency Updates and SDK Upgrade**
  - Updated the Dart SDK to the minimum required version 3, ensuring the project's compatibility with the latest language features and improvements.
  - Upgraded several key dependencies, including `http_status`, `test`, `dart_code_linter`, and `lints` packages, to their latest versions. This upgrade resolves potential issues with outdated dependencies and adopts the latest best practices.

## [1.0.0] - 2024-02-25

- **HTTP Exception Handling:**
  - Replaced `HttpStatus` with `HttpStatusCode` for consistency and potential benefits (explore further).
  - Improved readability of exception classes for better maintainability.
  - Enhanced exception handling mechanisms for more robust error management.
  - Added dedicated classes for HTTP 4xx and 5xx exceptions to categorize errors effectively.
  - Introduced constructors for 4xx and 5xx exceptions to streamline exception creation.
- **Code Organization and Linting:**
  - Refactored HTTP exception code into multiple files for better modularity and organization.
  - Enhanced Dart code linting to enforce coding standards and maintain code quality.

| Code | HttpException (v0.2.2 - v1.x.x [Deprecated]) | HttpException (v1.x.x)                         |
| ---- | -------------------------------------------- | ---------------------------------------------- |
| 400  | BadRequestException()                        | BadRequestHttpException()                      |
| 401  | UnauthorizedException()                      | UnauthorizedHttpException()                    |
| 402  | PaymentRequiredException()                   | PaymentRequiredHttpException()                 |
| 403  | ForbiddenException()                         | ForbiddenHttpException()                       |
| 404  | NotFoundException()                          | NotFoundHttpException()                        |
| 405  | MethodNotAllowedException()                  | MethodNotAllowedHttpException()                |
| 406  | NotAcceptableException()                     | NotAcceptableHttpException()                   |
| 407  | -                                            | ProxyAuthenticationRequiredHttpException()     |
| 408  | -                                            | RequestTimeoutHttpException()                  |
| 409  | ConflictException()                          | ConflictHttpException()                        |
| 410  | GoneException()                              | GoneHttpException()                            |
| 411  | -                                            | LengthRequiredHttpException()                  |
| 412  | PreconditionFailedException()                | PreconditionFailedHttpException()              |
| 413  | -                                            | RequestTooLongHttpException()                  |
| 414  | -                                            | RequestUriTooLongHttpException()               |
| 415  | UnsupportedMediaTypeException()              | UnsupportedMediaTypeHttpException()            |
| 416  | -                                            | RequestedRangeNotSatisfiableHttpException()    |
| 417  | -                                            | ExpectationFailedHttpException()               |
| 418  | -                                            | ImATeapotHttpException()                       |
| 419  | -                                            | InsufficientSpaceOnResourceHttpException()     |
| 420  | -                                            | MethodFailureHttpException()                   |
| 421  | -                                            | MisdirectedRequestHttpException()              |
| 422  | -                                            | UnprocessableEntityHttpException()             |
| 423  | -                                            | LockedHttpException()                          |
| 424  | -                                            | FailedDependencyHttpException()                |
| 426  | -                                            | UpgradeRequiredHttpException()                 |
| 428  | -                                            | PreconditionRequiredHttpException()            |
| 429  | TooManyRequestsException()                   | TooManyRequestsHttpException()                 |
| 431  | -                                            | RequestHeaderFieldsTooLargeHttpException()     |
| 444  | -                                            | ConnectionClosedWithoutResponseHttpException() |
| 451  | -                                            | UnavailableForLegalReasonsHttpException()      |
| 499  | -                                            | ClientClosedRequestHttpException()             |
| 500  | -                                            | InternalServerErrorHttpException()             |
| 501  | NotImplementedException()                    | NotImplementedHttpException()                  |
| 502  | -                                            | BadGatewayHttpException()                      |
| 503  | ServiceUnavailableException()                | ServiceUnavailableHttpException()              |
| 504  | -                                            | GatewayTimeoutHttpException()                  |
| 505  | -                                            | HttpVersionNotSupportedHttpException()         |
| 506  | -                                            | VariantAlsoNegotiatesHttpException()           |
| 507  | -                                            | InsufficientStorageHttpException()             |
| 508  | -                                            | LoopDetectedHttpException()                    |
| 510  | -                                            | NotExtendedHttpException()                     |
| 511  | -                                            | NetworkAuthenticationRequiredHttpException()   |
| 599  | -                                            | NetworkConnectTimeoutErrorHttpException()      |

## 0.2.2

- feat: Dart migrate for null-safety
- chore: updated configuration Github Actions

## 0.2.1

- `toMap()` should not throw when `data` is `null`

## 0.2.0

- migrate to Dart 2 support
- enable Travis CI
- add badges

## 0.1.0

- created this package consisting only of the exception classes from the
shelf_exception_response package.
