// Copyright (c) 2014, Thomas Profelt
// Copyright (c) 2015, Günter Zöchbauer, Thomas Profelt
// Copyright (c) 2021, Diego Perez.
// Copyright (c) 2024, Andres Garcia (TECH-ANDGAR). All rights reserved.
// Use of this source code
// is governed by a Apache-style license that can be found in the LICENSE file.

import 'package:http_status/http_status.dart';

import '../http_exception.dart';

/// {@macro 400_bad_request_http_exception}
@Deprecated('Use [BadRequestHttpException] instead.')
class BadRequestException extends BadRequestHttpException {
  /// {@macro 400_bad_request_http_exception}
  @Deprecated('Use [BadRequestHttpException] instead.')
  const BadRequestException([Map<String, dynamic>? data, String detail = ''])
      : super(data: data, detail: detail);
}

/// {@template 400_bad_request_http_exception}
/// 400 Bad Request (Http Exception).
/// {@endtemplate}
class BadRequestHttpException extends HttpException {
  /// {@macro 400_bad_request_http_exception}
  const BadRequestHttpException({
    Map<String, dynamic>? data,
    String detail = '',
    Uri? uri,
  }) : super(
          data: data,
          httpStatus: HttpStatus.badRequest,
          message: 'Bad Request${detail != '' ? ': ' : ''}$detail',
          uri: uri,
        );
}

/// {@macro 401_unauthorized_http_exception}
@Deprecated('Use [UnauthorizedHttpException] instead.')
class UnauthorizedException extends UnauthorizedHttpException {
  /// {@macro 401_unauthorized_http_exception}
  @Deprecated('Use [UnauthorizedHttpException] instead.')
  const UnauthorizedException([Map<String, dynamic>? data, String detail = ''])
      : super(data: data, detail: detail);
}

/// {@template 401_unauthorized_http_exception}
/// 401 Unauthorized (Http Exception).
/// {@endtemplate}
class UnauthorizedHttpException extends HttpException {
  /// {@macro 401_unauthorized_http_exception}
  const UnauthorizedHttpException({
    Map<String, dynamic>? data,
    String detail = '',
    Uri? uri,
  }) : super(
          data: data,
          httpStatus: HttpStatus.unauthorized,
          message: 'Unauthorized${detail != '' ? ': ' : ''}$detail',
          uri: uri,
        );
}

/// {@macro 402_payment_required_http_exception}
@Deprecated('Use [PaymentRequiredHttpException] instead.')
class PaymentRequiredException extends PaymentRequiredHttpException {
  /// {@macro 402_payment_required_http_exception}
  @Deprecated('Use [PaymentRequiredHttpException] instead.')
  const PaymentRequiredException([
    Map<String, dynamic>? data,
    String detail = '',
  ]) : super(data: data, detail: detail);
}

/// {@template 402_payment_required_http_exception}
/// 402 Payment Required (Http Exception).
/// {@endtemplate}
class PaymentRequiredHttpException extends HttpException {
  /// {@macro 402_payment_required_http_exception}
  const PaymentRequiredHttpException({
    Map<String, dynamic>? data,
    String detail = '',
    Uri? uri,
  }) : super(
          data: data,
          httpStatus: HttpStatus.paymentRequired,
          message: 'Payment Required${detail != '' ? ': ' : ''}$detail',
          uri: uri,
        );
}

/// {@macro 403_forbidden_http_exception}
@Deprecated('Use [ForbiddenHttpException] instead.')
class ForbiddenException extends ForbiddenHttpException {
  /// {@macro 403_forbidden_http_exception}
  @Deprecated('Use [ForbiddenHttpException] instead.')
  const ForbiddenException([Map<String, dynamic>? data, String detail = ''])
      : super(data: data, detail: detail);
}

/// {@template 403_forbidden_http_exception}
/// 403 Forbidden (Http Exception).
/// {@endtemplate}
class ForbiddenHttpException extends HttpException {
  /// {@macro 403_forbidden_http_exception}
  const ForbiddenHttpException({
    Map<String, dynamic>? data,
    String detail = '',
    Uri? uri,
  }) : super(
          data: data,
          httpStatus: HttpStatus.forbidden,
          message: 'Forbidden${detail != '' ? ': ' : ''}$detail',
          uri: uri,
        );
}

/// {@macro 404_not_found_http_exception}
@Deprecated('Use [NotFoundHttpException] instead.')
class NotFoundException extends NotFoundHttpException {
  /// {@macro 404_not_found_http_exception}
  @Deprecated('Use [NotFoundHttpException] instead.')
  const NotFoundException([Map<String, dynamic>? data, String detail = ''])
      : super(data: data, detail: detail);
}

/// {@template 404_not_found_http_exception}
/// 404 Not Found (Http Exception).
/// {@endtemplate}
class NotFoundHttpException extends HttpException {
  /// {@macro 404_not_found_http_exception}
  const NotFoundHttpException({
    Map<String, dynamic>? data,
    String detail = '',
    Uri? uri,
  }) : super(
          data: data,
          httpStatus: HttpStatus.notFound,
          message: 'Not Found${detail != '' ? ': ' : ''}$detail',
          uri: uri,
        );
}

/// {@macro 405_method_not_allowed_http_exception}
@Deprecated('Use [MethodNotAllowedHttpException] instead.')
class MethodNotAllowedException extends MethodNotAllowedHttpException {
  /// {@macro 405_method_not_allowed_http_exception}
  @Deprecated('Use [MethodNotAllowedHttpException] instead.')
  const MethodNotAllowedException([
    Map<String, dynamic>? data,
    String detail = '',
  ]) : super(data: data, detail: detail);
}

/// {@template 405_method_not_allowed_http_exception}
/// 405 Method Not Allowed (Http Exception).
/// {@endtemplate}
class MethodNotAllowedHttpException extends HttpException {
  /// {@macro 405_method_not_allowed_http_exception}
  const MethodNotAllowedHttpException({
    Map<String, dynamic>? data,
    String detail = '',
    Uri? uri,
  }) : super(
          data: data,
          httpStatus: HttpStatus.methodNotAllowed,
          message: 'Method Not Allowed${detail != '' ? ': ' : ''}$detail',
          uri: uri,
        );
}

/// {@macro 406_not_acceptable_http_exception}
@Deprecated('Use [NotAcceptableHttpException] instead.')
class NotAcceptableException extends NotAcceptableHttpException {
  /// {@macro 406_not_acceptable_http_exception}
  @Deprecated('Use [NotAcceptableHttpException] instead.')
  const NotAcceptableException([Map<String, dynamic>? data, String detail = ''])
      : super(data: data, detail: detail);
}

/// {@template 406_not_acceptable_http_exception}
/// 406 Not Acceptable (Http Exception).
/// {@endtemplate}
class NotAcceptableHttpException extends HttpException {
  /// {@macro 406_not_acceptable_http_exception}
  const NotAcceptableHttpException({
    Map<String, dynamic>? data,
    String detail = '',
    Uri? uri,
  }) : super(
          data: data,
          httpStatus: HttpStatus.notAcceptable,
          message: 'Not Acceptable${detail != '' ? ': ' : ''}$detail',
          uri: uri,
        );
}

/// {@template 407_proxy_authentication_required_http_exception}
/// 407 Proxy Authentication Required (Http Exception).
/// {@endtemplate}
class ProxyAuthenticationRequiredHttpException extends HttpException {
  /// {@macro 407_proxy_authentication_required_http_exception}
  const ProxyAuthenticationRequiredHttpException({
    Map<String, dynamic>? data,
    String detail = '',
    Uri? uri,
  }) : super(
          data: data,
          httpStatus: HttpStatus.proxyAuthenticationRequired,
          message:
              'Proxy Authentication Required${detail != '' ? ': ' : ''}$detail',
          uri: uri,
        );
}

/// {@template 408_request_timeout_http_exception}
/// 408 Request Timeout (Http Exception).
/// {@endtemplate}
class RequestTimeoutHttpException extends HttpException {
  /// {@macro 408_request_timeout_http_exception}
  const RequestTimeoutHttpException({
    Map<String, dynamic>? data,
    String detail = '',
    Uri? uri,
  }) : super(
          data: data,
          httpStatus: HttpStatus.requestTimeout,
          message: 'Request Timeout${detail != '' ? ': ' : ''}$detail',
          uri: uri,
        );
}

/// {@macro 409_conflict_http_exception}
@Deprecated('Use [ConflictHttpException] instead.')
class ConflictException extends ConflictHttpException {
  /// {@macro 409_conflict_http_exception}
  @Deprecated('Use [ConflictHttpException] instead.')
  const ConflictException([Map<String, dynamic>? data, String detail = ''])
      : super(data: data, detail: detail);
}

/// {@template 409_conflict_http_exception}
/// 409 Conflict (Http Exception).
/// {@endtemplate}
class ConflictHttpException extends HttpException {
  /// {@macro 409_conflict_http_exception}
  const ConflictHttpException({
    Map<String, dynamic>? data,
    String detail = '',
    Uri? uri,
  }) : super(
          data: data,
          httpStatus: HttpStatus.conflict,
          message: 'Conflict${detail != '' ? ': ' : ''}$detail',
          uri: uri,
        );
}

/// {@macro 410_gone_http_exception}
@Deprecated('Use [GoneHttpException] instead.')
class GoneException extends GoneHttpException {
  /// {@macro 410_gone_http_exception}
  @Deprecated('Use [GoneHttpException] instead.')
  const GoneException([Map<String, dynamic>? data, String detail = ''])
      : super(data: data, detail: detail);
}

/// {@template 410_gone_http_exception}
/// 410 Gone (Http Exception).
/// {@endtemplate}
class GoneHttpException extends HttpException {
  /// {@macro 410_gone_http_exception}
  const GoneHttpException({
    Map<String, dynamic>? data,
    String detail = '',
    Uri? uri,
  }) : super(
          data: data,
          httpStatus: HttpStatus.gone,
          message: 'Gone${detail != '' ? ': ' : ''}$detail',
          uri: uri,
        );
}

/// {@template 411_length_required_http_exception}
/// 411 Length Required (Http Exception).
/// {@endtemplate}
class LengthRequiredHttpException extends HttpException {
  /// {@macro 411_length_required_http_exception}
  const LengthRequiredHttpException({
    Map<String, dynamic>? data,
    String detail = '',
    Uri? uri,
  }) : super(
          data: data,
          httpStatus: HttpStatus.lengthRequired,
          message: 'Length Required${detail != '' ? ': ' : ''}$detail',
          uri: uri,
        );
}

/// {@macro 412_precondition_failed_http_exception}
@Deprecated('Use [PreconditionFailedHttpException] instead.')
class PreconditionFailedException extends PreconditionFailedHttpException {
  /// {@macro 412_precondition_failed_http_exception}
  @Deprecated('Use [PreconditionFailedHttpException] instead.')
  const PreconditionFailedException([
    Map<String, dynamic>? data,
    String detail = '',
  ]) : super(data: data, detail: detail);
}

/// {@template 412_precondition_failed_http_exception}
/// 412 Precondition Failed (Http Exception).
/// {@endtemplate}
class PreconditionFailedHttpException extends HttpException {
  /// {@macro 412_precondition_failed_http_exception}
  const PreconditionFailedHttpException({
    Map<String, dynamic>? data,
    String detail = '',
    Uri? uri,
  }) : super(
          data: data,
          httpStatus: HttpStatus.preconditionFailed,
          message: 'Precondition Failed${detail != '' ? ': ' : ''}$detail',
          uri: uri,
        );
}

/// {@template 413_request_entity_too_large_http_exception}
/// 413 Request Entity Too Large (Http Exception).
/// {@endtemplate}
class RequestEntityTooLargeHttpException extends HttpException {
  /// {@macro 413_request_entity_too_large_http_exception}
  const RequestEntityTooLargeHttpException({
    Map<String, dynamic>? data,
    String detail = '',
    Uri? uri,
  }) : super(
          data: data,
          httpStatus: HttpStatus.requestEntityTooLarge,
          message: 'Request Entity Too Long${detail != '' ? ': ' : ''}$detail',
          uri: uri,
        );
}

/// {@template 414_request_uri_too_long_http_exception}
/// 414 Request Uri Too Long (Http Exception).
/// {@endtemplate}
class RequestUriTooLongHttpException extends HttpException {
  /// {@macro 414_request_uri_too_long_http_exception}
  const RequestUriTooLongHttpException({
    Map<String, dynamic>? data,
    String detail = '',
    Uri? uri,
  }) : super(
          data: data,
          httpStatus: HttpStatus.requestUriTooLong,
          message: 'Request Uri Too Long${detail != '' ? ': ' : ''}$detail',
          uri: uri,
        );
}

/// {@macro 415_unsupported_media_type_http_exception}
@Deprecated('Use [UnsupportedMediaTypeHttpException] instead.')
class UnsupportedMediaTypeException extends UnsupportedMediaTypeHttpException {
  /// {@macro 415_unsupported_media_type_http_exception}
  @Deprecated('Use [UnsupportedMediaTypeHttpException] instead.')
  const UnsupportedMediaTypeException([
    Map<String, dynamic>? data,
    String detail = '',
  ]) : super(data: data, detail: detail);
}

/// {@template 415_unsupported_media_type_http_exception}
/// 415 Unsupported Media Type (Http Exception).
/// {@endtemplate}
class UnsupportedMediaTypeHttpException extends HttpException {
  /// {@macro 415_unsupported_media_type_http_exception}
  const UnsupportedMediaTypeHttpException({
    Map<String, dynamic>? data,
    String detail = '',
    Uri? uri,
  }) : super(
          data: data,
          httpStatus: HttpStatus.unsupportedMediaType,
          message: 'Unsupported Media Type${detail != '' ? ': ' : ''}$detail',
          uri: uri,
        );
}

/// {@template 416_requested_range_not_satisfiable_http_exception}
/// 416 Requested Range Not Satisfiable (Http Exception).
/// {@endtemplate}
class RequestedRangeNotSatisfiableHttpException extends HttpException {
  /// {@macro 416_requested_range_not_satisfiable_http_exception}
  const RequestedRangeNotSatisfiableHttpException({
    Map<String, dynamic>? data,
    String detail = '',
    Uri? uri,
  }) : super(
          data: data,
          httpStatus: HttpStatus.requestedRangeNotSatisfiable,
          message:
              'Requested Range Not Satisfiable${detail != '' ? ': ' : ''}$detail',
          uri: uri,
        );
}

/// {@template 417_expectation_failed_http_exception}
/// 417 Expectation Failed (Http Exception).
/// {@endtemplate}
class ExpectationFailedHttpException extends HttpException {
  /// {@macro 417_expectation_failed_http_exception}
  const ExpectationFailedHttpException({
    Map<String, dynamic>? data,
    String detail = '',
    Uri? uri,
  }) : super(
          data: data,
          httpStatus: HttpStatus.expectationFailed,
          message: 'Expectation Failed${detail != '' ? ': ' : ''}$detail',
          uri: uri,
        );
}

/// {@template 418_im_a_teapot_http_exception}
/// 418 I'm A Teapot (Http Exception).
/// {@endtemplate}
class ImATeapotHttpException extends HttpException {
  /// {@macro 418_im_a_teapot_http_exception}
  const ImATeapotHttpException({
    Map<String, dynamic>? data,
    String detail = '',
    Uri? uri,
  }) : super(
          data: data,
          httpStatus: HttpStatus.imATeapot,
          message: "I'm A Teapot${detail != '' ? ': ' : ''}$detail",
          uri: uri,
        );
}

/// {@template 419_insufficient_space_on_resource_http_exception}
/// 419 Insufficient Space On Resource (Http Exception).
/// {@endtemplate}
class InsufficientSpaceOnResourceHttpException extends HttpException {
  /// {@macro 419_insufficient_space_on_resource_http_exception}
  const InsufficientSpaceOnResourceHttpException({
    Map<String, dynamic>? data,
    String detail = '',
    Uri? uri,
  }) : super(
          data: data,
          httpStatus: HttpStatus.insufficientSpaceOnResource,
          message:
              'Insufficient Space On Resource${detail != '' ? ': ' : ''}$detail',
          uri: uri,
        );
}

/// {@template 420_method_failure_http_exception}
/// 420 Method Failure (Http Exception).
/// {@endtemplate}
class MethodFailureHttpException extends HttpException {
  /// {@macro 420_method_failure_http_exception}
  const MethodFailureHttpException({
    Map<String, dynamic>? data,
    String detail = '',
    Uri? uri,
  }) : super(
          data: data,
          httpStatus: HttpStatus.methodFailure,
          message: 'Method Failure${detail != '' ? ': ' : ''}$detail',
          uri: uri,
        );
}

/// {@template 421_misdirected_request_http_exception}
/// 421 Misdirected Request (Http Exception).
/// {@endtemplate}
class MisdirectedRequestHttpException extends HttpException {
  /// {@macro 421_misdirected_request_http_exception}
  const MisdirectedRequestHttpException({
    Map<String, dynamic>? data,
    String detail = '',
    Uri? uri,
  }) : super(
          data: data,
          httpStatus: HttpStatus.misdirectedRequest,
          message: 'Misdirected Request${detail != '' ? ': ' : ''}$detail',
          uri: uri,
        );
}

/// {@template 422_unprocessable_entity_http_exception}
/// 422 Unprocessable Entity (Http Exception).
/// {@endtemplate}
class UnprocessableEntityHttpException extends HttpException {
  /// {@macro 422_unprocessable_entity_http_exception}
  const UnprocessableEntityHttpException({
    Map<String, dynamic>? data,
    String detail = '',
    Uri? uri,
  }) : super(
          data: data,
          httpStatus: HttpStatus.unprocessableEntity,
          message: 'Unprocessable Entity${detail != '' ? ': ' : ''}$detail',
          uri: uri,
        );
}

/// {@template 423_locked_http_exception}
/// 423 Locked (Http Exception).
/// {@endtemplate}
class LockedHttpException extends HttpException {
  /// {@macro 423_locked_http_exception}
  const LockedHttpException({
    Map<String, dynamic>? data,
    String detail = '',
    Uri? uri,
  }) : super(
          data: data,
          httpStatus: HttpStatus.locked,
          message: 'Locked${detail != '' ? ': ' : ''}$detail',
          uri: uri,
        );
}

/// {@template 424_failed_dependency_http_exception}
/// 424 Failed Dependency (Http Exception).
/// {@endtemplate}
class FailedDependencyHttpException extends HttpException {
  /// {@macro 424_failed_dependency_http_exception}
  const FailedDependencyHttpException({
    Map<String, dynamic>? data,
    String detail = '',
    Uri? uri,
  }) : super(
          data: data,
          httpStatus: HttpStatus.failedDependency,
          message: 'Failed Dependency${detail != '' ? ': ' : ''}$detail',
          uri: uri,
        );
}

/// {@template 426_upgrade_required_http_exception}
/// 426 Upgrade Required (Http Exception).
/// {@endtemplate}
class UpgradeRequiredHttpException extends HttpException {
  /// {@macro 426_upgrade_required_http_exception}
  const UpgradeRequiredHttpException({
    Map<String, dynamic>? data,
    String detail = '',
    Uri? uri,
  }) : super(
          data: data,
          httpStatus: HttpStatus.upgradeRequired,
          message: 'Upgrade Required${detail != '' ? ': ' : ''}$detail',
          uri: uri,
        );
}

/// {@template 428_precondition_required_http_exception}
/// 428 Precondition Required (Http Exception).
/// {@endtemplate}
class PreconditionRequiredHttpException extends HttpException {
  /// {@macro 428_precondition_required_http_exception}
  const PreconditionRequiredHttpException({
    Map<String, dynamic>? data,
    String detail = '',
    Uri? uri,
  }) : super(
          data: data,
          httpStatus: HttpStatus.preconditionRequired,
          message: 'Precondition Required${detail != '' ? ': ' : ''}$detail',
          uri: uri,
        );
}

/// {@template 429_too_many_requests_http_exception}
/// 429 Too Many Requests (Http Exception).
/// {@endtemplate}
class TooManyRequestsHttpException extends HttpException {
  /// {@macro 429_too_many_requests_http_exception}
  const TooManyRequestsHttpException({
    Map<String, dynamic>? data,
    String detail = '',
    Uri? uri,
  }) : super(
          data: data,
          httpStatus: HttpStatus.tooManyRequests,
          message: 'Too Many Requests${detail != '' ? ': ' : ''}$detail',
          uri: uri,
        );
}

/// {@template 431_request_header_fields_too_large_http_exception}
/// 431 Request Header Fields Too Large (Http Exception).
/// {@endtemplate}
class RequestHeaderFieldsTooLargeHttpException extends HttpException {
  /// {@macro 431_request_header_fields_too_large_http_exception}
  const RequestHeaderFieldsTooLargeHttpException({
    Map<String, dynamic>? data,
    String detail = '',
    Uri? uri,
  }) : super(
          data: data,
          httpStatus: HttpStatus.requestHeaderFieldsTooLarge,
          message:
              'Request Header Fields Too Large${detail != '' ? ': ' : ''}$detail',
          uri: uri,
        );
}

/// {@template 444_connection_closed_without_response_http_exception}
/// 444 Connection Closed Without Response (Http Exception).
/// {@endtemplate}
class ConnectionClosedWithoutResponseHttpException extends HttpException {
  /// {@macro 444_connection_closed_without_response_http_exception}
  const ConnectionClosedWithoutResponseHttpException({
    Map<String, dynamic>? data,
    String detail = '',
    Uri? uri,
  }) : super(
          data: data,
          httpStatus: HttpStatus.connectionClosedWithoutResponse,
          message:
              'Connection Closed Without Response${detail != '' ? ': ' : ''}$detail',
          uri: uri,
        );
}

/// {@template 451_unavailable_for_legal_reasons_http_exception}
/// 451 Unavailable For Legal Reasons (Http Exception).
/// {@endtemplate}
class UnavailableForLegalReasonsHttpException extends HttpException {
  /// {@macro 451_unavailable_for_legal_reasons_http_exception}
  const UnavailableForLegalReasonsHttpException({
    Map<String, dynamic>? data,
    String detail = '',
    Uri? uri,
  }) : super(
          data: data,
          httpStatus: HttpStatus.unavailableForLegalReasons,
          message:
              'Unavailable For Legal Reasons${detail != '' ? ': ' : ''}$detail',
          uri: uri,
        );
}

/// {@template 499_client_closed_request_http_exception}
/// 499 Client Closed Request (Http Exception).
/// {@endtemplate}
class ClientClosedRequestHttpException extends HttpException {
  /// {@macro 499_client_closed_request_http_exception}
  const ClientClosedRequestHttpException({
    Map<String, dynamic>? data,
    String detail = '',
    Uri? uri,
  }) : super(
          data: data,
          httpStatus: HttpStatus.clientClosedRequest,
          message: 'Client Closed Request${detail != '' ? ': ' : ''}$detail',
          uri: uri,
        );
}
