library http_exception;

import 'package:http_status/http_status.dart';

/// A bas class for specific HTTP exception classes.
/// [Map] data can be provided to add additional information as the response
/// body.
class HttpException implements Exception {
  const HttpException([
    this.status = HttpStatusCode.internalServerError,
    this.message = 'Internal Server Error',
    this.data,
  ]);

  final Map<String, dynamic>? data;
  final String message;
  final int status;

  @override
  String toString() => 'Status $status: $message';

  Map<String, dynamic> toMap() => <String, dynamic>{
        'status': status,
        'message': message,
      }..addAll(data ?? <String, dynamic>{});
}

/// 400 Bad Request
class BadRequestException extends HttpException {
  const BadRequestException([Map<String, dynamic>? data, String detail = ''])
      : super(
          HttpStatusCode.badRequest,
          'Bad Request${detail != '' ? ': ' : ''}$detail',
          data,
        );
}

/// 401 Unauthorized
class UnauthorizedException extends HttpException {
  const UnauthorizedException([Map<String, dynamic>? data, String detail = ''])
      : super(
          HttpStatusCode.unauthorized,
          'Unauthorized${detail != '' ? ': ' : ''}$detail',
          data,
        );
}

/// 402 Payment Required
class PaymentRequiredException extends HttpException {
  const PaymentRequiredException([
    Map<String, dynamic>? data,
    String detail = '',
  ]) : super(
          HttpStatusCode.paymentRequired,
          'Payment Required${detail != '' ? ': ' : ''}$detail',
          data,
        );
}

/// 403 Forbidden
class ForbiddenException extends HttpException {
  const ForbiddenException([Map<String, dynamic>? data, String detail = ''])
      : super(
          HttpStatusCode.forbidden,
          'Forbidden${detail != '' ? ': ' : ''}$detail',
          data,
        );
}

/// 404 Not Found
class NotFoundException extends HttpException {
  const NotFoundException([Map<String, dynamic>? data, String detail = ''])
      : super(
          HttpStatusCode.notFound,
          'Not Found${detail != '' ? ': ' : ''}$detail',
          data,
        );
}

/// 405 Method Not Allowed
class MethodNotAllowed extends HttpException {
  const MethodNotAllowed([Map<String, dynamic>? data, String detail = ''])
      : super(
          HttpStatusCode.methodNotAllowed,
          'Method Not Allowed${detail != '' ? ': ' : ''}$detail',
          data,
        );
}

/// 406 Not Acceptable
class NotAcceptableException extends HttpException {
  const NotAcceptableException([Map<String, dynamic>? data, String detail = ''])
      : super(
          HttpStatusCode.notAcceptable,
          'Not Acceptable${detail != '' ? ': ' : ''}$detail',
          data,
        );
}

/// 409 Conflict
class ConflictException extends HttpException {
  const ConflictException([Map<String, dynamic>? data, String detail = ''])
      : super(
          HttpStatusCode.conflict,
          'Conflict${detail != '' ? ': ' : ''}$detail',
          data,
        );
}

/// 410 Gone
class GoneException extends HttpException {
  const GoneException([Map<String, dynamic>? data, String detail = ''])
      : super(
          HttpStatusCode.gone,
          'Gone${detail != '' ? ': ' : ''}$detail',
          data,
        );
}

/// 412 Precondition Failed
class PreconditionFailedException extends HttpException {
  const PreconditionFailedException([
    Map<String, dynamic>? data,
    String detail = '',
  ]) : super(
          HttpStatusCode.preconditionFailed,
          'Precondition Failed${detail != '' ? ': ' : ''}$detail',
          data,
        );
}

/// 415 Unsupported Media Type
class UnsupportedMediaTypeException extends HttpException {
  const UnsupportedMediaTypeException([
    Map<String, dynamic>? data,
    String detail = '',
  ]) : super(
          HttpStatusCode.unsupportedMediaType,
          'Unsupported Media Type${detail != '' ? ': ' : ''}$detail',
          data,
        );
}

/// 429 Too Many Requests
class TooManyRequestsException extends HttpException {
  const TooManyRequestsException([
    Map<String, dynamic>? data,
    String detail = '',
  ]) : super(429, 'Too Many Requests${detail != '' ? ': ' : ''}$detail', data);
}

/// 501 Not Implemented
class NotImplementedException extends HttpException {
  const NotImplementedException([
    Map<String, dynamic>? data,
    String detail = '',
  ]) : super(
          HttpStatusCode.notImplemented,
          'Not Implemented${detail != '' ? ': ' : ''}$detail',
          data,
        );
}

/// 503 Service Unavailable
class ServiceUnavailableException extends HttpException {
  const ServiceUnavailableException([
    Map<String, dynamic>? data,
    String detail = '',
  ]) : super(
          HttpStatusCode.serviceUnavailable,
          'Service Unavailable${detail != '' ? ': ' : ''}$detail',
          data,
        );
}
