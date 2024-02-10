import 'package:http_status/http_status.dart';

import '../http_exception.dart';

/// 400 Bad Request
class BadRequestException extends HttpException {
  const BadRequestException([Map<String, dynamic>? data, String detail = ''])
      : super(
          httpStatus: HttpStatus.badRequest,
          message: 'Bad Request${detail != '' ? ': ' : ''}$detail',
          data: data,
        );
}

/// 401 Unauthorized
class UnauthorizedException extends HttpException {
  const UnauthorizedException([Map<String, dynamic>? data, String detail = ''])
      : super(
          httpStatus: HttpStatus.unauthorized,
          message: 'Unauthorized${detail != '' ? ': ' : ''}$detail',
          data: data,
        );
}

/// 402 Payment Required
class PaymentRequiredException extends HttpException {
  const PaymentRequiredException([
    Map<String, dynamic>? data,
    String detail = '',
  ]) : super(
          httpStatus: HttpStatus.paymentRequired,
          message: 'Payment Required${detail != '' ? ': ' : ''}$detail',
          data: data,
        );
}

/// 403 Forbidden
class ForbiddenException extends HttpException {
  const ForbiddenException([Map<String, dynamic>? data, String detail = ''])
      : super(
          httpStatus: HttpStatus.forbidden,
          message: 'Forbidden${detail != '' ? ': ' : ''}$detail',
          data: data,
        );
}

/// 404 Not Found
class NotFoundException extends HttpException {
  const NotFoundException([Map<String, dynamic>? data, String detail = ''])
      : super(
          httpStatus: HttpStatus.notFound,
          message: 'Not Found${detail != '' ? ': ' : ''}$detail',
          data: data,
        );
}

/// 405 Method Not Allowed
class MethodNotAllowed extends HttpException {
  const MethodNotAllowed([Map<String, dynamic>? data, String detail = ''])
      : super(
          httpStatus: HttpStatus.methodNotAllowed,
          message: 'Method Not Allowed${detail != '' ? ': ' : ''}$detail',
          data: data,
        );
}

/// 406 Not Acceptable
class NotAcceptableException extends HttpException {
  const NotAcceptableException([Map<String, dynamic>? data, String detail = ''])
      : super(
          httpStatus: HttpStatus.notAcceptable,
          message: 'Not Acceptable${detail != '' ? ': ' : ''}$detail',
          data: data,
        );
}

/// 409 Conflict
class ConflictException extends HttpException {
  const ConflictException([Map<String, dynamic>? data, String detail = ''])
      : super(
          httpStatus: HttpStatus.conflict,
          message: 'Conflict${detail != '' ? ': ' : ''}$detail',
          data: data,
        );
}

/// 410 Gone
class GoneException extends HttpException {
  const GoneException([Map<String, dynamic>? data, String detail = ''])
      : super(
          httpStatus: HttpStatus.gone,
          message: 'Gone${detail != '' ? ': ' : ''}$detail',
          data: data,
        );
}

/// 412 Precondition Failed
class PreconditionFailedException extends HttpException {
  const PreconditionFailedException([
    Map<String, dynamic>? data,
    String detail = '',
  ]) : super(
          httpStatus: HttpStatus.preconditionFailed,
          message: 'Precondition Failed${detail != '' ? ': ' : ''}$detail',
          data: data,
        );
}

/// 415 Unsupported Media Type
class UnsupportedMediaTypeException extends HttpException {
  const UnsupportedMediaTypeException([
    Map<String, dynamic>? data,
    String detail = '',
  ]) : super(
          httpStatus: HttpStatus.unsupportedMediaType,
          message: 'Unsupported Media Type${detail != '' ? ': ' : ''}$detail',
          data: data,
        );
}

/// 429 Too Many Requests
class TooManyRequestsException extends HttpException {
  const TooManyRequestsException([
    Map<String, dynamic>? data,
    String detail = '',
  ]) : super(
          httpStatus: HttpStatus.tooManyRequests,
          message: 'Too Many Requests${detail != '' ? ': ' : ''}$detail',
          data: data,
        );
}
