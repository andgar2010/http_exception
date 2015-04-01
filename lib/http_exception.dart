library http_exception;

import 'http_status.dart';

/// A bas class for specific HTTP exception classes.
/// [Map] data can be provided to add additional information as the response
/// body.
class HttpException implements Exception {
  final int status;
  final String message;
  final Map<String, dynamic> data;

  const HttpException([this.status = HttpStatus.INTERNAL_SERVER_ERROR,
      this.message = 'Internal Server Error', this.data]);

  Map<String, dynamic> toMap() {
    Map<String, dynamic> result = {'status': status, 'message': message};
    if (data != null) {
      data.forEach((name, value) {
        result[name] = value;
      });
    }
    return result;
  }

  String toString() => 'Status $status: $message';
}

/// 400 Bad Request
class BadRequestException extends HttpException {
  const BadRequestException([Map<String, dynamic> data, String detail = ''])
      : super(HttpStatus.BAD_REQUEST,
          'Bad Request${(detail != '' ? ': ' : '')}$detail', data);
}

/// 401 Unauthorized
class UnauthorizedException extends HttpException {
  const UnauthorizedException([Map<String, dynamic> data, String detail = ''])
      : super(HttpStatus.UNAUTHORIZED,
          'Unauthorized${(detail != '' ? ': ' : '')}$detail', data);
}

/// 402 Payment Required
class PaymentRequiredException extends HttpException {
  const PaymentRequiredException(
      [Map<String, dynamic> data, String detail = ''])
      : super(HttpStatus.PAYMENT_REQUIRED,
          'Payment Required${(detail != '' ? ': ' : '')}$detail', data);
}

/// 403 Forbidden
class ForbiddenException extends HttpException {
  const ForbiddenException([Map<String, dynamic> data, String detail = ''])
      : super(HttpStatus.FORBIDDEN,
          'Forbidden${(detail != '' ? ': ' : '')}$detail', data);
}

/// 404 Not Found
class NotFoundException extends HttpException {
  const NotFoundException([Map<String, dynamic> data, String detail = ''])
      : super(HttpStatus.NOT_FOUND,
          'Not Found${(detail != '' ? ': ' : '')}$detail', data);
}

/// 405 Method Not Allowed
class MethodNotAllowed extends HttpException {
  const MethodNotAllowed([Map<String, dynamic> data, String detail = ''])
      : super(HttpStatus.METHOD_NOT_ALLOWED,
          'Method Not Allowed${(detail != '' ? ': ' : '')}$detail', data);
}

/// 406 Not Acceptable
class NotAcceptableException extends HttpException {
  const NotAcceptableException([Map<String, dynamic> data, String detail = ''])
      : super(HttpStatus.NOT_ACCEPTABLE,
          'Not Acceptable${(detail != '' ? ': ' : '')}$detail', data);
}

/// 409 Conflict
class ConflictException extends HttpException {
  const ConflictException([Map<String, dynamic> data, String detail = ''])
      : super(HttpStatus.CONFLICT,
          'Conflict${(detail != '' ? ': ' : '')}$detail', data);
}

/// 410 Gone
class GoneException extends HttpException {
  const GoneException([Map<String, dynamic> data, String detail = '']) : super(
          HttpStatus.GONE, 'Gone${(detail != '' ? ': ' : '')}$detail', data);
}

/// 412 Precondition Failed
class PreconditionFailedException extends HttpException {
  const PreconditionFailedException(
      [Map<String, dynamic> data, String detail = ''])
      : super(HttpStatus.PRECONDITION_FAILED,
          'Precondition Failed${(detail != '' ? ': ' : '')}$detail', data);
}

/// 415 Unsupported Media Type
class UnsupportedMediaTypeException extends HttpException {
  const UnsupportedMediaTypeException(
      [Map<String, dynamic> data, String detail = ''])
      : super(HttpStatus.UNSUPPORTED_MEDIA_TYPE,
          'Unsupported Media Type${(detail != '' ? ': ' : '')}$detail', data);
}

/// 429 Too Many Requests
class TooManyRequestsException extends HttpException {
  const TooManyRequestsException(
      [Map<String, dynamic> data, String detail = ''])
      : super(
          429, 'Too Many Requests${(detail != '' ? ': ' : '')}$detail', data);
}

/// 501 Not Implemented
class NotImplementedException extends HttpException {
  const NotImplementedException([Map<String, dynamic> data, String detail = ''])
      : super(HttpStatus.NOT_IMPLEMENTED,
          'Not Implemented${(detail != '' ? ': ' : '')}$detail', data);
}

/// 503 Service Unavailable
class ServiceUnavailableException extends HttpException {
  const ServiceUnavailableException(
      [Map<String, dynamic> data, String detail = ''])
      : super(HttpStatus.SERVICE_UNAVAILABLE,
          'Service Unavailable${(detail != '' ? ': ' : '')}$detail', data);
}
