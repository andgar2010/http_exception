# Changelog

## 1.0.0

- **HTTP Exception Handling:**
  - Replaced `HttpStatus` with `HttpStatusCode` for consistency and potential benefits (explore further).
  - Improved readability of exception classes for better maintainability.
  - Enhanced exception handling mechanisms for more robust error management.
  - Added dedicated classes for HTTP 4xx and 5xx exceptions to categorize errors effectively.
  - Introduced constructors for 4xx and 5xx exceptions to streamline exception creation.
- **Code Organization and Linting:**
  - Refactored HTTP exception code into multiple files for better modularity and organization.
  - Enhanced Dart code linting to enforce coding standards and maintain code quality.

| Code | Http Status (v0.2.2 - v1.x.x [Deprecated]) | HttpException (v1.x.x)                         |
| ---- | ------------------------------------------ | ---------------------------------------------- |
| 400  | BadRequestException()                      | BadRequestHttpException()                      |
| 401  | UnauthorizedException()                    | UnauthorizedHttpException()                    |
| 402  | PaymentRequiredException()                 | PaymentRequiredHttpException()                 |
| 403  | ForbiddenException()                       | ForbiddenHttpException()                       |
| 404  | NotFoundException()                        | NotFoundHttpException()                        |
| 405  | MethodNotAllowedException()                | MethodNotAllowedHttpException()                |
| 406  | NotAcceptableException()                   | NotAcceptableHttpException()                   |
| 407  | -                                          | ProxyAuthenticationRequiredHttpException()     |
| 408  | -                                          | RequestTimeoutHttpException()                  |
| 409  | ConflictException()                        | ConflictHttpException()                        |
| 410  | GoneException()                            | GoneHttpException()                            |
| 411  | -                                          | LengthRequiredHttpException()                  |
| 412  | PreconditionFailedException()              | PreconditionFailedHttpException()              |
| 413  | -                                          | RequestTooLongHttpException()                  |
| 414  | -                                          | RequestUriTooLongHttpException()               |
| 415  | UnsupportedMediaTypeException()            | UnsupportedMediaTypeHttpException()            |
| 416  | -                                          | RequestedRangeNotSatisfiableHttpException()    |
| 417  | -                                          | ExpectationFailedHttpException()               |
| 418  | -                                          | ImATeapotHttpException()                       |
| 419  | -                                          | InsufficientSpaceOnResourceHttpException()     |
| 420  | -                                          | MethodFailureHttpException()                   |
| 421  | -                                          | MisdirectedRequestHttpException()              |
| 422  | -                                          | UnprocessableEntityHttpException()             |
| 423  | -                                          | LockedHttpException()                          |
| 424  | -                                          | FailedDependencyHttpException()                |
| 426  | -                                          | UpgradeRequiredHttpException()                 |
| 428  | -                                          | PreconditionRequiredHttpException()            |
| 429  | TooManyRequestsException()                 | TooManyRequestsHttpException()                 |
| 431  | -                                          | RequestHeaderFieldsTooLargeHttpException()     |
| 444  | -                                          | ConnectionClosedWithoutResponseHttpException() |
| 451  | -                                          | UnavailableForLegalReasonsHttpException()      |
| 499  | -                                          | ClientClosedRequestHttpException()             |
| 500  | -                                          | InternalServerErrorHttpException()             |
| 501  | NotImplementedException()                  | NotImplementedHttpException()                  |
| 502  | -                                          | BadGatewayHttpException()                      |
| 503  | ServiceUnavailableException()              | ServiceUnavailableHttpException()              |
| 504  | -                                          | GatewayTimeoutHttpException()                  |
| 505  | -                                          | HttpVersionNotSupportedHttpException()         |
| 506  | -                                          | VariantAlsoNegotiatesHttpException()           |
| 507  | -                                          | InsufficientStorageHttpException()             |
| 508  | -                                          | LoopDetectedHttpException()                    |
| 510  | -                                          | NotExtendedHttpException()                     |
| 511  | -                                          | NetworkAuthenticationRequiredHttpException()   |
| 599  | -                                          | NetworkConnectTimeoutErrorHttpException()      |

## 0.2.2

- dart migrate for null-safety

## 0.2.1

- `toMap()` should not throw when `data` is `null`

## 0.2.0

- migrate to Dart 2
- enable Travis CI
- add badges

## 0.1.0

- created this package consisting only of the exception classes from the
shelf_exception_response package.
