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
  const BadRequestException([Map<String, dynamic>? data, String detail = ''])
      : super(data: data, detail: detail);
}

/// {@template 400_bad_request_http_exception}
/// 400 Bad Request (Http Exception).
/// {@endtemplate}
class BadRequestHttpException extends HttpException {
  const BadRequestHttpException({
    super.data,
    String detail = '',
    super.uri,
  }) : super(
          httpStatus: HttpStatus.badRequest,
          message: 'Bad Request${detail != '' ? ': ' : ''}$detail',
        );
}

/// {@macro 401_unauthorized_http_exception}
@Deprecated('Use [UnauthorizedHttpException] instead.')
class UnauthorizedException extends UnauthorizedHttpException {
  const UnauthorizedException([Map<String, dynamic>? data, String detail = ''])
      : super(data: data, detail: detail);
}

/// {@template 401_unauthorized_http_exception}
/// 401 Unauthorized (Http Exception).
/// {@endtemplate}
class UnauthorizedHttpException extends HttpException {
  const UnauthorizedHttpException({
    super.data,
    String detail = '',
    super.uri,
  }) : super(
          httpStatus: HttpStatus.unauthorized,
          message: 'Unauthorized${detail != '' ? ': ' : ''}$detail',
        );
}

/// {@macro 402_payment_required_http_exception}
@Deprecated('Use [PaymentRequiredHttpException] instead.')
class PaymentRequiredException extends PaymentRequiredHttpException {
  const PaymentRequiredException([
    Map<String, dynamic>? data,
    String detail = '',
  ]) : super(data: data, detail: detail);
}

/// {@template 402_payment_required_http_exception}
/// 402 Payment Required (Http Exception).
/// {@endtemplate}
class PaymentRequiredHttpException extends HttpException {
  const PaymentRequiredHttpException({
    super.data,
    String detail = '',
    super.uri,
  }) : super(
          httpStatus: HttpStatus.paymentRequired,
          message: 'Payment Required${detail != '' ? ': ' : ''}$detail',
        );
}

/// {@macro 403_forbidden_http_exception}
@Deprecated('Use [ForbiddenHttpException] instead.')
class ForbiddenException extends ForbiddenHttpException {
  const ForbiddenException([Map<String, dynamic>? data, String detail = ''])
      : super(data: data, detail: detail);
}

/// {@template 403_forbidden_http_exception}
/// 403 Forbidden (Http Exception).
/// {@endtemplate}
class ForbiddenHttpException extends HttpException {
  const ForbiddenHttpException({
    super.data,
    String detail = '',
    super.uri,
  }) : super(
          httpStatus: HttpStatus.forbidden,
          message: 'Forbidden${detail != '' ? ': ' : ''}$detail',
        );
}

/// {@macro 404_not_found_http_exception}
@Deprecated('Use [NotFoundHttpException] instead.')
class NotFoundException extends NotFoundHttpException {
  const NotFoundException([Map<String, dynamic>? data, String detail = ''])
      : super(data: data, detail: detail);
}

/// {@template 404_not_found_http_exception}
/// 404 Not Found (Http Exception).
/// {@endtemplate}
class NotFoundHttpException extends HttpException {
  const NotFoundHttpException({
    super.data,
    String detail = '',
    super.uri,
  }) : super(
          httpStatus: HttpStatus.notFound,
          message: 'Not Found${detail != '' ? ': ' : ''}$detail',
        );
}

/// {@macro 405_method_not_allowed_http_exception}
@Deprecated('Use [MethodNotAllowedHttpException] instead.')
class MethodNotAllowedException extends MethodNotAllowedHttpException {
  const MethodNotAllowedException([
    Map<String, dynamic>? data,
    String detail = '',
  ]) : super(data: data, detail: detail);
}

/// {@template 405_method_not_allowed_http_exception}
/// 405 Method Not Allowed (Http Exception).
/// {@endtemplate}
class MethodNotAllowedHttpException extends HttpException {
  const MethodNotAllowedHttpException({
    super.data,
    String detail = '',
    super.uri,
  }) : super(
          httpStatus: HttpStatus.methodNotAllowed,
          message: 'Method Not Allowed${detail != '' ? ': ' : ''}$detail',
        );
}

/// {@macro 406_not_acceptable_http_exception}
@Deprecated('Use [NotAcceptableHttpException] instead.')
class NotAcceptableException extends NotAcceptableHttpException {
  const NotAcceptableException([Map<String, dynamic>? data, String detail = ''])
      : super(data: data, detail: detail);
}

/// {@template 406_not_acceptable_http_exception}
/// 406 Not Acceptable (Http Exception).
/// {@endtemplate}
class NotAcceptableHttpException extends HttpException {
  const NotAcceptableHttpException({
    super.data,
    String detail = '',
    super.uri,
  }) : super(
          httpStatus: HttpStatus.notAcceptable,
          message: 'Not Acceptable${detail != '' ? ': ' : ''}$detail',
        );
}

/// {@macro 407_proxy_authentication_required_http_exception}
@Deprecated('Use [ProxyAuthenticationRequiredHttpException] instead.')
class ProxyAuthenticationRequiredException
    extends ProxyAuthenticationRequiredHttpException {
  const ProxyAuthenticationRequiredException([
    Map<String, dynamic>? data,
    String detail = '',
  ]) : super(data: data, detail: detail);
}

/// {@template 407_proxy_authentication_required_http_exception}
/// 407 Proxy Authentication Required (Http Exception).
/// {@endtemplate}
class ProxyAuthenticationRequiredHttpException extends HttpException {
  const ProxyAuthenticationRequiredHttpException({
    super.data,
    String detail = '',
    super.uri,
  }) : super(
          httpStatus: HttpStatus.proxyAuthenticationRequired,
          message:
              'Proxy Authentication Required${detail != '' ? ': ' : ''}$detail',
        );
}

/// {@macro 408_request_timeout_http_exception}
@Deprecated('Use [RequestTimeoutHttpException] instead.')
class RequestTimeoutException extends RequestTimeoutHttpException {
  const RequestTimeoutException([
    Map<String, dynamic>? data,
    String detail = '',
  ]) : super(data: data, detail: detail);
}

/// {@template 408_request_timeout_http_exception}
/// 408 Request Timeout (Http Exception).
/// {@endtemplate}
class RequestTimeoutHttpException extends HttpException {
  const RequestTimeoutHttpException({
    super.data,
    String detail = '',
    super.uri,
  }) : super(
          httpStatus: HttpStatus.requestTimeout,
          message: 'Request Timeout${detail != '' ? ': ' : ''}$detail',
        );
}

/// {@macro 409_conflict_http_exception}
@Deprecated('Use [ConflictHttpException] instead.')
class ConflictException extends ConflictHttpException {
  const ConflictException([Map<String, dynamic>? data, String detail = ''])
      : super(data: data, detail: detail);
}

/// {@template 409_conflict_http_exception}
/// 409 Conflict (Http Exception).
/// {@endtemplate}
class ConflictHttpException extends HttpException {
  const ConflictHttpException({
    super.data,
    String detail = '',
    super.uri,
  }) : super(
          httpStatus: HttpStatus.conflict,
          message: 'Conflict${detail != '' ? ': ' : ''}$detail',
        );
}

/// {@macro 410_gone_http_exception}
@Deprecated('Use [GoneHttpException] instead.')
class GoneException extends GoneHttpException {
  const GoneException([Map<String, dynamic>? data, String detail = ''])
      : super(data: data, detail: detail);
}

/// {@template 410_gone_http_exception}
/// 410 Gone (Http Exception).
/// {@endtemplate}
class GoneHttpException extends HttpException {
  const GoneHttpException({
    super.data,
    String detail = '',
    super.uri,
  }) : super(
          httpStatus: HttpStatus.gone,
          message: 'Gone${detail != '' ? ': ' : ''}$detail',
        );
}

/// {@macro 411_length_required_http_exception}
@Deprecated('Use [LengthRequiredHttpException] instead.')
class LengthRequiredException extends LengthRequiredHttpException {
  const LengthRequiredException([
    Map<String, dynamic>? data,
    String detail = '',
  ]) : super(data: data, detail: detail);
}

/// {@template 411_length_required_http_exception}
/// 411 Length Required (Http Exception).
/// {@endtemplate}
class LengthRequiredHttpException extends HttpException {
  const LengthRequiredHttpException({
    super.data,
    String detail = '',
    super.uri,
  }) : super(
          httpStatus: HttpStatus.lengthRequired,
          message: 'Length Required${detail != '' ? ': ' : ''}$detail',
        );
}

/// {@macro 412_precondition_failed_http_exception}
@Deprecated('Use [PreconditionFailedHttpException] instead.')
class PreconditionFailedException extends PreconditionFailedHttpException {
  const PreconditionFailedException([
    Map<String, dynamic>? data,
    String detail = '',
  ]) : super(data: data, detail: detail);
}

/// {@template 412_precondition_failed_http_exception}
/// 412 Precondition Failed (Http Exception).
/// {@endtemplate}
class PreconditionFailedHttpException extends HttpException {
  const PreconditionFailedHttpException({
    super.data,
    String detail = '',
    super.uri,
  }) : super(
          httpStatus: HttpStatus.preconditionFailed,
          message: 'Precondition Failed${detail != '' ? ': ' : ''}$detail',
        );
}

/// {@macro 413_request_entity_too_large_http_exception}
@Deprecated('Use [RequestEntityTooLargeHttpException] instead.')
class RequestEntityTooLargeException
    extends RequestEntityTooLargeHttpException {
  const RequestEntityTooLargeException([
    Map<String, dynamic>? data,
    String detail = '',
  ]) : super(data: data, detail: detail);
}

/// {@template 413_request_entity_too_large_http_exception}
/// 413 Request Entity Too Large (Http Exception).
/// {@endtemplate}
class RequestEntityTooLargeHttpException extends HttpException {
  const RequestEntityTooLargeHttpException({
    super.data,
    String detail = '',
    super.uri,
  }) : super(
          httpStatus: HttpStatus.requestEntityTooLarge,
          message: 'Request Entity Too Long${detail != '' ? ': ' : ''}$detail',
        );
}

/// {@macro 414_request_uri_too_long_http_exception}
@Deprecated('Use [RequestUriTooLongHttpException] instead.')
class RequestUriTooLongException extends RequestUriTooLongHttpException {
  const RequestUriTooLongException([
    Map<String, dynamic>? data,
    String detail = '',
  ]) : super(data: data, detail: detail);
}

/// {@template 414_request_uri_too_long_http_exception}
/// 414 Request Uri Too Long (Http Exception).
/// {@endtemplate}
class RequestUriTooLongHttpException extends HttpException {
  const RequestUriTooLongHttpException({
    super.data,
    String detail = '',
    super.uri,
  }) : super(
          httpStatus: HttpStatus.requestUriTooLong,
          message: 'Request Uri Too Long${detail != '' ? ': ' : ''}$detail',
        );
}

/// {@macro 415_unsupported_media_type_http_exception}
@Deprecated('Use [UnsupportedMediaTypeHttpException] instead.')
class UnsupportedMediaTypeException extends UnsupportedMediaTypeHttpException {
  const UnsupportedMediaTypeException([
    Map<String, dynamic>? data,
    String detail = '',
  ]) : super(data: data, detail: detail);
}

/// {@template 415_unsupported_media_type_http_exception}
/// 415 Unsupported Media Type (Http Exception).
/// {@endtemplate}
class UnsupportedMediaTypeHttpException extends HttpException {
  const UnsupportedMediaTypeHttpException({
    super.data,
    String detail = '',
    super.uri,
  }) : super(
          httpStatus: HttpStatus.unsupportedMediaType,
          message: 'Unsupported Media Type${detail != '' ? ': ' : ''}$detail',
        );
}

/// {@macro 416_requested_range_not_satisfiable_http_exception}
@Deprecated('Use [RequestedRangeNotSatisfiableHttpException] instead.')
class RequestedRangeNotSatisfiableException
    extends RequestedRangeNotSatisfiableHttpException {
  const RequestedRangeNotSatisfiableException([
    Map<String, dynamic>? data,
    String detail = '',
  ]) : super(data: data, detail: detail);
}

/// {@template 416_requested_range_not_satisfiable_http_exception}
/// 416 Requested Range Not Satisfiable (Http Exception).
/// {@endtemplate}
class RequestedRangeNotSatisfiableHttpException extends HttpException {
  const RequestedRangeNotSatisfiableHttpException({
    super.data,
    String detail = '',
    super.uri,
  }) : super(
          httpStatus: HttpStatus.requestedRangeNotSatisfiable,
          message:
              'Requested Range Not Satisfiable${detail != '' ? ': ' : ''}$detail',
        );
}

/// {@macro 417_expectation_failed_http_exception}
@Deprecated('Use [ExpectationFailedHttpException] instead.')
class ExpectationFailedException extends ExpectationFailedHttpException {
  const ExpectationFailedException([
    Map<String, dynamic>? data,
    String detail = '',
  ]) : super(data: data, detail: detail);
}

/// {@template 417_expectation_failed_http_exception}
/// 417 Expectation Failed (Http Exception).
/// {@endtemplate}
class ExpectationFailedHttpException extends HttpException {
  const ExpectationFailedHttpException({
    super.data,
    String detail = '',
    super.uri,
  }) : super(
          httpStatus: HttpStatus.expectationFailed,
          message: 'Expectation Failed${detail != '' ? ': ' : ''}$detail',
        );
}

/// {@macro 418_im_a_teapot_http_exception}
@Deprecated('Use [ImATeapotHttpException] instead.')
class ImATeapotException extends ImATeapotHttpException {
  const ImATeapotException([Map<String, dynamic>? data, String detail = ''])
      : super(data: data, detail: detail);
}

/// {@template 418_im_a_teapot_http_exception}
/// 418 I'm A Teapot (Http Exception).
/// {@endtemplate}
class ImATeapotHttpException extends HttpException {
  const ImATeapotHttpException({
    super.data,
    String detail = '',
    super.uri,
  }) : super(
          httpStatus: HttpStatus.imATeapot,
          message: "I'm A Teapot${detail != '' ? ': ' : ''}$detail",
        );
}

/// {@macro 419_insufficient_space_on_resource_http_exception}
@Deprecated('Use [InsufficientSpaceOnResourceHttpException] instead.')
class InsufficientSpaceOnResourceException
    extends InsufficientSpaceOnResourceHttpException {
  const InsufficientSpaceOnResourceException([
    Map<String, dynamic>? data,
    String detail = '',
  ]) : super(data: data, detail: detail);
}

/// {@template 419_insufficient_space_on_resource_http_exception}
/// 419 Insufficient Space On Resource (Http Exception).
/// {@endtemplate}
class InsufficientSpaceOnResourceHttpException extends HttpException {
  const InsufficientSpaceOnResourceHttpException({
    super.data,
    String detail = '',
    super.uri,
  }) : super(
          httpStatus: HttpStatus.insufficientSpaceOnResource,
          message:
              'Insufficient Space On Resource${detail != '' ? ': ' : ''}$detail',
        );
}

/// {@macro 420_method_failure_http_exception}
@Deprecated('Use [MethodFailureHttpException] instead.')
class MethodFailureException extends MethodFailureHttpException {
  const MethodFailureException([Map<String, dynamic>? data, String detail = ''])
      : super(data: data, detail: detail);
}

/// {@template 420_method_failure_http_exception}
/// 420 Method Failure (Http Exception).
/// {@endtemplate}
class MethodFailureHttpException extends HttpException {
  const MethodFailureHttpException({
    super.data,
    String detail = '',
    super.uri,
  }) : super(
          httpStatus: HttpStatus.methodFailure,
          message: 'Method Failure${detail != '' ? ': ' : ''}$detail',
        );
}

/// {@macro 421_misdirected_request_http_exception}
@Deprecated('Use [MisdirectedRequestHttpException] instead.')
class MisdirectedRequestException extends MisdirectedRequestHttpException {
  const MisdirectedRequestException([
    Map<String, dynamic>? data,
    String detail = '',
  ]) : super(data: data, detail: detail);
}

/// {@template 421_misdirected_request_http_exception}
/// 421 Misdirected Request (Http Exception).
/// {@endtemplate}
class MisdirectedRequestHttpException extends HttpException {
  const MisdirectedRequestHttpException({
    super.data,
    String detail = '',
    super.uri,
  }) : super(
          httpStatus: HttpStatus.misdirectedRequest,
          message: 'Misdirected Request${detail != '' ? ': ' : ''}$detail',
        );
}

/// {@macro 422_unprocessable_entity_http_exception}
@Deprecated('Use [UnprocessableEntityHttpException] instead.')
class UnprocessableEntityException extends UnprocessableEntityHttpException {
  const UnprocessableEntityException([
    Map<String, dynamic>? data,
    String detail = '',
  ]) : super(data: data, detail: detail);
}

/// {@template 422_unprocessable_entity_http_exception}
/// 422 Unprocessable Entity (Http Exception).
/// {@endtemplate}
class UnprocessableEntityHttpException extends HttpException {
  const UnprocessableEntityHttpException({
    super.data,
    String detail = '',
    super.uri,
  }) : super(
          httpStatus: HttpStatus.unprocessableEntity,
          message: 'Unprocessable Entity${detail != '' ? ': ' : ''}$detail',
        );
}

/// {@macro 423_locked_http_exception}
@Deprecated('Use [LockedHttpException] instead.')
class LockedException extends LockedHttpException {
  const LockedException([Map<String, dynamic>? data, String detail = ''])
      : super(data: data, detail: detail);
}

/// {@template 423_locked_http_exception}
/// 423 Locked (Http Exception).
/// {@endtemplate}
class LockedHttpException extends HttpException {
  const LockedHttpException({
    super.data,
    String detail = '',
    super.uri,
  }) : super(
          httpStatus: HttpStatus.locked,
          message: 'Locked${detail != '' ? ': ' : ''}$detail',
        );
}

/// {@macro 424_failed_dependency_http_exception}
@Deprecated('Use [FailedDependencyHttpException] instead.')
class FailedDependencyException extends FailedDependencyHttpException {
  const FailedDependencyException([
    Map<String, dynamic>? data,
    String detail = '',
  ]) : super(data: data, detail: detail);
}

/// {@template 424_failed_dependency_http_exception}
/// 424 Failed Dependency (Http Exception).
/// {@endtemplate}
class FailedDependencyHttpException extends HttpException {
  const FailedDependencyHttpException({
    super.data,
    String detail = '',
    super.uri,
  }) : super(
          httpStatus: HttpStatus.failedDependency,
          message: 'Failed Dependency${detail != '' ? ': ' : ''}$detail',
        );
}

/// {@macro 426_upgrade_required_http_exception}
@Deprecated('Use [UpgradeRequiredHttpException] instead.')
class UpgradeRequiredException extends UpgradeRequiredHttpException {
  const UpgradeRequiredException([
    Map<String, dynamic>? data,
    String detail = '',
  ]) : super(data: data, detail: detail);
}

/// {@template 426_upgrade_required_http_exception}
/// 426 Upgrade Required (Http Exception).
/// {@endtemplate}
class UpgradeRequiredHttpException extends HttpException {
  const UpgradeRequiredHttpException({
    super.data,
    String detail = '',
    super.uri,
  }) : super(
          httpStatus: HttpStatus.upgradeRequired,
          message: 'Upgrade Required${detail != '' ? ': ' : ''}$detail',
        );
}

/// {@macro 428_precondition_required_http_exception}
@Deprecated('Use [PreconditionRequiredHttpException] instead.')
class PreconditionRequiredException extends PreconditionRequiredHttpException {
  const PreconditionRequiredException([
    Map<String, dynamic>? data,
    String detail = '',
  ]) : super(data: data, detail: detail);
}

/// {@template 428_precondition_required_http_exception}
/// 428 Precondition Required (Http Exception).
/// {@endtemplate}
class PreconditionRequiredHttpException extends HttpException {
  const PreconditionRequiredHttpException({
    super.data,
    String detail = '',
    super.uri,
  }) : super(
          httpStatus: HttpStatus.preconditionRequired,
          message: 'Precondition Required${detail != '' ? ': ' : ''}$detail',
        );
}

/// {@macro 429_too_many_requests_http_exception}
@Deprecated('Use [TooManyRequestsHttpException] instead.')
class TooManyRequestsException extends TooManyRequestsHttpException {
  const TooManyRequestsException([
    Map<String, dynamic>? data,
    String detail = '',
  ]) : super(data: data, detail: detail);
}

/// {@template 429_too_many_requests_http_exception}
/// 429 Too Many Requests (Http Exception).
/// {@endtemplate}
class TooManyRequestsHttpException extends HttpException {
  const TooManyRequestsHttpException({
    super.data,
    String detail = '',
    super.uri,
  }) : super(
          httpStatus: HttpStatus.tooManyRequests,
          message: 'Too Many Requests${detail != '' ? ': ' : ''}$detail',
        );
}

/// {@macro 431_request_header_fields_too_large_http_exception}
@Deprecated('Use [RequestHeaderFieldsTooLargeHttpException] instead.')
class RequestHeaderFieldsTooLargeException
    extends RequestHeaderFieldsTooLargeHttpException {
  const RequestHeaderFieldsTooLargeException([
    Map<String, dynamic>? data,
    String detail = '',
  ]) : super(data: data, detail: detail);
}

/// {@template 431_request_header_fields_too_large_http_exception}
/// 431 Request Header Fields Too Large (Http Exception).
/// {@endtemplate}
class RequestHeaderFieldsTooLargeHttpException extends HttpException {
  const RequestHeaderFieldsTooLargeHttpException({
    super.data,
    String detail = '',
    super.uri,
  }) : super(
          httpStatus: HttpStatus.requestHeaderFieldsTooLarge,
          message:
              'Request Header Fields Too Large${detail != '' ? ': ' : ''}$detail',
        );
}

/// {@macro 444_connection_closed_without_response_http_exception}
@Deprecated('Use [ConnectionClosedWithoutResponseHttpException] instead.')
class ConnectionClosedWithoutResponseException
    extends ConnectionClosedWithoutResponseHttpException {
  const ConnectionClosedWithoutResponseException([
    Map<String, dynamic>? data,
    String detail = '',
  ]) : super(data: data, detail: detail);
}

/// {@template 444_connection_closed_without_response_http_exception}
/// 444 Connection Closed Without Response (Http Exception).
/// {@endtemplate}
class ConnectionClosedWithoutResponseHttpException extends HttpException {
  const ConnectionClosedWithoutResponseHttpException({
    super.data,
    String detail = '',
    super.uri,
  }) : super(
          httpStatus: HttpStatus.connectionClosedWithoutResponse,
          message:
              'Connection Closed Without Response${detail != '' ? ': ' : ''}$detail',
        );
}

/// {@macro 451_unavailable_for_legal_reasons_http_exception}
@Deprecated('Use [UnavailableForLegalReasonsHttpException] instead.')
class UnavailableForLegalReasonsException
    extends UnavailableForLegalReasonsHttpException {
  const UnavailableForLegalReasonsException([
    Map<String, dynamic>? data,
    String detail = '',
  ]) : super(data: data, detail: detail);
}

/// {@template 451_unavailable_for_legal_reasons_http_exception}
/// 451 Unavailable For Legal Reasons (Http Exception).
/// {@endtemplate}
class UnavailableForLegalReasonsHttpException extends HttpException {
  const UnavailableForLegalReasonsHttpException({
    super.data,
    String detail = '',
    super.uri,
  }) : super(
          httpStatus: HttpStatus.unavailableForLegalReasons,
          message:
              'Unavailable For Legal Reasons${detail != '' ? ': ' : ''}$detail',
        );
}

/// {@macro 499_client_closed_request_http_exception}
@Deprecated('Use [ClientClosedRequestHttpException] instead.')
class ClientClosedRequestException extends ClientClosedRequestHttpException {
  const ClientClosedRequestException([
    Map<String, dynamic>? data,
    String detail = '',
  ]) : super(data: data, detail: detail);
}

/// {@template 499_client_closed_request_http_exception}
/// 499 Client Closed Request (Http Exception).
/// {@endtemplate}
class ClientClosedRequestHttpException extends HttpException {
  const ClientClosedRequestHttpException({
    super.data,
    String detail = '',
    super.uri,
  }) : super(
          httpStatus: HttpStatus.clientClosedRequest,
          message: 'Client Closed Request${detail != '' ? ': ' : ''}$detail',
        );
}
