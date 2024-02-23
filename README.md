# HTTP Exception for Dart (http_exception)

<p align="center">

[![Star this Repo](https://img.shields.io/github/stars/andgar2010/http_exception.svg?style=flat)](https://github.com/andgar2010/http_exception)
[![Pub Package](https://img.shields.io/pub/v/http_exception.svg?style=flat)](https://pub.dartlang.org/packages/http_exception)
[![build Status](https://github.com/andgar2010/http_exception/actions/workflows/http_exception.yml/badge.svg)](https://github.com/andgar2010/http_exception/actions/workflows/http_exception.yml)
[![Coverage Status](https://coveralls.io/repos/andgar2010/http_exception/badge.svg?branch=main)](https://coveralls.io/r/andgar2010/http_exception)

</p>

This package, delivers a comprehensive and customizable system for handling HTTP exception in Dart applications, providing clear, concise, and type-safe predefined exception classes, thereby enhancing error management and the developer experience.

## Problem Solved

The `http_exception` package addresses the challenge of effectively handling HTTP exceptions in Dart applications. These exceptions often lack structured information, resulting in difficulties in:

* **Identifying the exact error:** Generic error messages offer limited clues, making debugging and resolution time-consuming.
* **Providing meaningful feedback to users:** Uninformative exception can alienate users and hinder their understanding of the issue.
* **Logging and tracking exception effectively:** Without detailed information, it's hard to gather meaningful insights from error logs.
* **Maintaining code clarity and organization:** Custom exception creation with string manipulation can lead to spaghetti code.

Sure, let's illustrate the difference in handling HTTP exceptions with and without using a structured package like the HTTP Exceptions package. The comparison will highlight how the package simplifies error handling, making it more consistent and informative.

### Without Using the HTTP Exceptions Package

#### Handling an HTTP Error

```dart
void getUser(int userId) {
  final response = fetchUserData(userId); // Pseudo-function to fetch user data.

  if (response.statusCode == 404) {
    print('Error: User not found.');
  } else if (response.statusCode == 500) {
    print('Error: Internal server error.');
  } else if (response.statusCode == 200) {
    // Process the successful response.
  } else {
    print('Error: Unexpected error occurred.');
  }
}
```

In this approach:

* Error handling is manual and repetitive across different functions or parts of the application.
* It's prone to exception and inconsistencies, especially as the complexity grows.
* Lack of a structured way to include additional error information or context.

### Using the HTTP Exceptions Package

#### Handling the Same HTTP Error

```dart
import 'package:http_status/http_status.dart';

void getUser(int userId) {
  final response = fetchUserData(userId); // Pseudo-function to fetch user data.

  try {
    validateResponseStatus(response);
    // Process the successful response.

  } on HttpException catch (e) {
    print(e.toString());
  }
}

void validateResponseStatus(HttpResponse response) {
  if (response.statusCode == HttpStatus.notFound.code) {
    throw NotFoundException(data: {'userId': userId, 'error': 'User not found'});
  } else if (response.statusCode == HttpStatus.internalServerError.code) {
    throw InternalServerErrorException();
  } else if (response.statusCode != HttpStatus.ok.code) {
    throw HttpException(
      httpStatus: HttpStatus.fromCode(response.statusCode),
      message: 'Unexpected error occurred',
    );
  }
}
```

With the HTTP Exceptions package:

* Errors are handled in a structured and consistent manner across the application.
* It's easier to extend and maintain, especially with custom exceptions for specific status codes.
* Developers can include additional data (context) with exceptions, which enhances the debugging and error logging process.
* Reduces boilerplate code by leveraging exception classes tailored to HTTP error scenarios.

### Comparison Summary

* **Consistency & Maintenance**: The package provides a uniform way to handle HTTP exceptions, making it easier to manage and maintain as the application grows.
* **Customization & Clarity**:With the HTTP Exceptions package, developers can define and utilize informative, context-rich exceptions across various HTTP status scenarios. This approach offers customization and clarity, improving both the developer experience and the application's reliability.

## Key Features

* **`HttpException` base class:** Provides a structured foundation for creating custom HTTP exceptions, capturing essential details like:
  * HTTP status code (e.g., 404 Not Found)
  * Custom message for clear communication
  * Optional data associated with the error (e.g., form validation errors)
  * Optional URI of the request that triggered the error
* **Type safety:** Leverages Dart's strong typing for reliability and prevention of runtime errors.
* **Customizable exceptions:** Ability to add additional information like data and URI to exceptions.
* **`HttpStatusExtension` for ease of use:** Simplifies exception creation from HTTP status codes.
* **Detailed error reporting:** Supports general messages and specific details for better analysis.
* **Custom HTTP status codes:** Define unique error scenarios with custom codes and descriptions.

## Benefits

* **Improved error handling:** Structured exceptions lead to faster debugging, better logging, and reduced maintenance costs.
* **Enhanced developer experience:** Type safety, clarity, and ease of use contribute to faster development, higher code quality, and improved developer satisfaction.
* **Flexibility and customization:** Adapts to diverse application needs with custom exceptions and statuses.
* **Better code organization:** Dedicated classes and functions for HTTP exceptions promote code clarity, maintainability, and organization.

## Installation

```shell
dart pub add http_exception
# or
flutter pub add http_exception
```

Or add the following to your `pubspec.yaml` file:

```yaml
dependencies:
  http_exception: ^<latest_version>
```

Then, run `dart pub get` or `flutter pub get` to install the package.

## Usage

1. **Import the package:**

    ```dart
    import 'package:http_exception/http_exception.dart';
    ```

2. Additional Response Data in Body

    ```dart
    // Example with data and URI
    final HttpException e = BadGatewayHttpException();

    print(e.toString());
    // -> HttpException Status 502 - Bad Gateway
    ```

3. Additional Response Data in Body

    While the provided code primarily focuses on exceptions as separate entities, here are ways to incorporate response data from the body:

    * **Data field in `HttpException`:** Consider adding a `data` field (possibly generic) to the `HttpException` base class to accommodate a wider range of response data types.
    * **Specific sub-exceptions:** Create specialized exception classes like `MalformedJsonException` or `ValidationErrorsException` that encapsulate both HTTP status code and relevant response body data for structured handling.
    * **Custom handling within exception constructors:** Tailor the way you handle response data within custom exception constructors, extracting and storing it appropriately using libraries like `dart:convert` if necessary.

    **Example with Additional Response Data:**

    ```dart
    // Example with data and URI
    final HttpException e = BadGatewayHttpException(
      data: {'name': 'dart', 'age': 7},
      detail: 'Message Customized Detail Exception',
      uri: Uri.parse('http://dart.dev'),
    );

    print(e.toString());
    // -> HttpException Status 502 - Bad Gateway: Message Customized Detail Exception, uri = http://dart.dev, HTTP data = {name: dart, age: 7}
    ```

4. **Throw or handle exceptions:**

    ```dart
    void validateInput(String input) {
      if (input.isEmpty) {
        throw BadRequestHttpException(data: {'error': 'InputValidationFailed', 'details': 'Input cannot be empty.'});
      }
      // Process valid input
    }

    try {
      validateInput('');
    } catch (e) {
      print(e.toString());
      // Output: HTTPException Status 400 - Bad Request, HTTP data = {error: InputValidationFailed, details: Input cannot be empty.}
    }
    ```

    ```dart
    final exception = BadRequestHttpException(
      data: {
        'errors': [
          'Invalid email format',
          'Username already exists',
        ],
      },
      detail: 'Validation failed',
      uri: Uri.parse('https://api.example.com/register'),
    );

    // Accessing data in an exception handler
    try {
      // Make your API HTTP request or other code that might throw an exception
    } on HttpException catch (e) {
      // Handle the exception based on its properties (e.g., httpStatus, message, data, uri)
      print(e.toString());
      // Example -> HttpException Status 400 - Bad Request: Validation failed, uri = https://api.example.com/register, HTTP data = {errors: ['Invalid email format','Username already exists']}
      if (e.data.containsKey('errors')) {
        final errors = e.data['errors'] as List<String>;
        // Display errors to the user in a user-friendly manner
      }
    }
    ```

### Usage extension with package `http_status`

```dart
import 'package:http_status/http_status.dart';
import 'package:http_exception/http_exception.dart';

void main() {
  final HttpException a = HttpStatus.fromCode(422).exception();
  print(a.toString()); // -> HTTP Status 422 - Unprocessable Entity

  final HttpException b =
      HttpStatus.fromCode(422).exception(data: {'name': 'dart', 'age': 7});
  print(b.toString());
  // -> HttpException Status 422 - Unprocessable Entity, HTTP data = {name: dart, age: 7}

  final HttpException c = HttpStatus.fromCode(422).exception(
    data: {'name': 'dart', 'age': 7},
    detail: 'Message Detail Exception',
  );
  print(c.toString());
  // -> HttpException Status 422 - Unprocessable Entity: Message Detail Exception, HTTP data = {name: dart, age: 7}

  final HttpException d = HttpStatus.fromCode(422).exception(
    data: {'name': 'dart', 'age': 7},
    detail: 'Message Detail Exception',
    uri: Uri.parse('http://dart.dev'),
  );
  print(d.toString());
  // -> HttpException Status 422 - Unprocessable Entity: Message Detail Exception, uri = http://dart.dev, HTTP data = {name: dart, age: 7}
}
```

### Add your custom own exception types

There are already predefined exceptions for the most common Http error code available but you may find that there is a specific error code missing. In that case you can simply define your own HttpException type by extending or implementing HttpException.

```dart
class CustomHttpStatus extends HttpStatus {
  CustomHttpStatus({
    required super.code,
    required super.name,
    required super.description,
  });
}

// Example creating with custom HTTP status
final customException = CustomHttpStatus(
  code: 987,
  name: 'MyCustomError',
  description: 'My custom error description',
);


// creating custom HttpException
class InvalidSSLCertificateHttpException extends HttpException {
  InvalidSSLCertificateHttpException({
    super.data,
    String detail = '',
    super.uri,
  }) : super(
          httpStatus: CustomHttpStatus(
            code: 888,
            name: 'InvalidSSLCertificate',
            description: 'InvalidSSLCertificate description',
          ),
          message: 'InvalidSSLCertificate${detail != '' ? ': ' : ''}$detail',
        );
}

void main() {
  final HttpException myCustomException = InvalidSSLCertificateHttpException(
    detail: 'Message Detail Exception',
    uri: Uri.parse('http://localhost:80'),
    data: {'id': 1, 'name': 'Dart'},
  );
  print(myCustomException.toString());
  // -> HttpException Status 888 - InvalidSSLCertificate: Message Detail Exception, uri = http://localhost, HTTP data = {id: 1, name: Dart}
}
```

## Upgrading v0.2.2 to v1.x.x

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

## Contributing

We love contributions from the community! If you'd like to help make `http_exception` even better, here are a few ways you can contribute:

* **Reporting Bugs** - If you find a bug, please report it by opening an [issue](https://github.com/andgar2010/http_exception/issues).
* **Suggesting Improvements** - Have an idea to improve the library? Share your suggestions through issues!
* **Submitting Pull Requests** - We welcome pull requests. Please make sure to read our [Code of Conduct](https://github.com/andgar2010/http_exception/blob/main/CODE_OF_CONDUCT.md) and [Contributing Guide](https://github.com/andgar2010/http_exception/blob/main/CONTRIBUTING.md) before making a submission.

### Setting Up for Development

If you're interested in contributing code, here's how to set up `http_exception` for local development:

1. Fork the `http_exception` repo on GitHub.

2. Clone your fork locally:

    ```bash
    git clone git@github.com:your_name_here/http_exception.git
    ```

3. Create a branch for local development:

    ```bash
     git checkout -b name-of-your-bugfix-or-feature
    ```

4. Make your changes locally.

5. When you're done making changes, check that your commits are well formatted, then push your branch to GitHub:

    ```bash
    git push origin name-of-your-bugfix-or-feature
    ```

6. Submit a pull request through the GitHub website using your feature branch.

Don't forget to regularly pull in changes from the "upstream" repository to keep your fork up to date.

We're excited to review your contributions and collaborate on iterating and improving `http_exception` together!

## Thanking all Awesome Contributors :heart:

[![Contributors](https://contrib.rocks/image?repo=andgar2010/http_exception)](https://github.com/andgar2010/http_exception/graphs/contributors)

Contributions of any kind are welcome!

## License

[Apache 2.0](LICENSE)

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: https://github.com/andgar2010/http_exception

---------------------------------
