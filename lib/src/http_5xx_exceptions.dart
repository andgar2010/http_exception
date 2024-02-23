// Copyright (c) 2014, Thomas Profelt
// Copyright (c) 2015, Günter Zöchbauer, Thomas Profelt
// Copyright (c) 2021, Diego Perez.
// Copyright (c) 2024, Andres Garcia (TECH-ANDGAR). All rights reserved.
// Use of this source code
// is governed by a Apache-style license that can be found in the LICENSE file.

import 'package:http_status/http_status.dart';

import '../http_exception.dart';

/// {@template 500_internal_server_error_http_exception}
/// 500 Internal Server Error (Http Exception).
/// {@endtemplate}
class InternalServerErrorHttpException extends HttpException {
  /// {@macro 500_internal_server_error_http_exception}
  const InternalServerErrorHttpException({
    Map<String, dynamic>? data,
    String detail = '',
    Uri? uri,
  }) : super(
          data: data,
          httpStatus: HttpStatus.internalServerError,
          message: 'Internal Server Error${detail != '' ? ': ' : ''}$detail',
          uri: uri,
        );
}

/// {@macro 501_not_implemented_http_exception}
@Deprecated('Use [NotImplementedHttpException] instead.')
class NotImplementedException extends NotImplementedHttpException {
  /// {@macro 501_not_implemented_http_exception}
  @Deprecated('Use [NotImplementedHttpException] instead.')
  const NotImplementedException([
    Map<String, dynamic>? data,
    String detail = '',
  ]) : super(data: data, detail: detail);
}

/// {@template 501_not_implemented_http_exception}
/// 501 Not Implemented (Http Exception).
/// {@endtemplate}
class NotImplementedHttpException extends HttpException {
  /// {@macro 501_not_implemented_http_exception}
  const NotImplementedHttpException({
    Map<String, dynamic>? data,
    String detail = '',
    Uri? uri,
  }) : super(
          data: data,
          httpStatus: HttpStatus.notImplemented,
          message: 'Not Implemented${detail != '' ? ': ' : ''}$detail',
          uri: uri,
        );
}

/// {@template 502_bad_gateway_http_exception}
/// 502 Bad Gateway (Http Exception).
/// {@endtemplate}
class BadGatewayHttpException extends HttpException {
  /// {@macro 502_bad_gateway_http_exception}
  const BadGatewayHttpException({
    Map<String, dynamic>? data,
    String detail = '',
    Uri? uri,
  }) : super(
          data: data,
          httpStatus: HttpStatus.badGateway,
          message: 'Bad Gateway${detail != '' ? ': ' : ''}$detail',
          uri: uri,
        );
}

/// {@macro 503_service_unavailable_http_exception}
@Deprecated('Use [ServiceUnavailableHttpException] instead.')
class ServiceUnavailableException extends ServiceUnavailableHttpException {
  /// {@macro 503_service_unavailable_http_exception}
  @Deprecated('Use [ServiceUnavailableHttpException] instead.')
  const ServiceUnavailableException([
    Map<String, dynamic>? data,
    String detail = '',
  ]) : super(data: data, detail: detail);
}

/// {@template 503_service_unavailable_http_exception}
/// 503 Service Unavailable (Http Exception).
/// {@endtemplate}
class ServiceUnavailableHttpException extends HttpException {
  /// {@macro 503_service_unavailable_http_exception}
  const ServiceUnavailableHttpException({
    Map<String, dynamic>? data,
    String detail = '',
    Uri? uri,
  }) : super(
          data: data,
          httpStatus: HttpStatus.serviceUnavailable,
          message: 'Service Unavailable${detail != '' ? ': ' : ''}$detail',
          uri: uri,
        );
}

/// {@template 504_gateway_timeout_http_exception}
/// 504 Gateway Timeout (Http Exception).
/// {@endtemplate}
class GatewayTimeoutHttpException extends HttpException {
  /// {@macro 504_gateway_timeout_http_exception}
  const GatewayTimeoutHttpException({
    Map<String, dynamic>? data,
    String detail = '',
    Uri? uri,
  }) : super(
          data: data,
          httpStatus: HttpStatus.gatewayTimeout,
          message: 'Gateway Timeout${detail != '' ? ': ' : ''}$detail',
          uri: uri,
        );
}

/// {@template 505_http_version_not_supported_http_exception}
/// 505 Http Version Not Supported (Http Exception).
/// {@endtemplate}
class HttpVersionNotSupportedHttpException extends HttpException {
  /// {@macro 505_http_version_not_supported_http_exception}
  const HttpVersionNotSupportedHttpException({
    Map<String, dynamic>? data,
    String detail = '',
    Uri? uri,
  }) : super(
          data: data,
          httpStatus: HttpStatus.httpVersionNotSupported,
          message:
              'Http Version Not Supported${detail != '' ? ': ' : ''}$detail',
          uri: uri,
        );
}

/// {@template 506_variant_also_negotiates_http_exception}
/// 506 Variant Also Negotiates (Http Exception).
/// {@endtemplate}
class VariantAlsoNegotiatesHttpException extends HttpException {
  /// {@macro 506_variant_also_negotiates_http_exception}
  const VariantAlsoNegotiatesHttpException({
    Map<String, dynamic>? data,
    String detail = '',
    Uri? uri,
  }) : super(
          data: data,
          httpStatus: HttpStatus.variantAlsoNegotiates,
          message: 'Variant Also Negotiates${detail != '' ? ': ' : ''}$detail',
          uri: uri,
        );
}

/// {@template 507_insufficient_storage_http_exception}
/// 507 Insufficient Storage (Http Exception).
/// {@endtemplate}
class InsufficientStorageHttpException extends HttpException {
  /// {@macro 507_insufficient_storage_http_exception}
  const InsufficientStorageHttpException({
    Map<String, dynamic>? data,
    String detail = '',
    Uri? uri,
  }) : super(
          data: data,
          httpStatus: HttpStatus.insufficientStorage,
          message: 'Insufficient Storage${detail != '' ? ': ' : ''}$detail',
          uri: uri,
        );
}

/// {@template 508_loop_detected_http_exception}
/// 508 Loop Detected (Http Exception).
/// {@endtemplate}
class LoopDetectedHttpException extends HttpException {
  /// {@macro 508_loop_detected_http_exception}
  const LoopDetectedHttpException({
    Map<String, dynamic>? data,
    String detail = '',
    Uri? uri,
  }) : super(
          data: data,
          httpStatus: HttpStatus.loopDetected,
          message: 'Loop Detected${detail != '' ? ': ' : ''}$detail',
          uri: uri,
        );
}

/// {@template 510_not_extended_http_exception}
/// 511 Not Extended (Http Exception).
/// {@endtemplate}
class NotExtendedHttpException extends HttpException {
  /// {@macro 510_not_extended_http_exception}
  const NotExtendedHttpException({
    Map<String, dynamic>? data,
    String detail = '',
    Uri? uri,
  }) : super(
          data: data,
          httpStatus: HttpStatus.notExtended,
          message: 'Not Extended${detail != '' ? ': ' : ''}$detail',
          uri: uri,
        );
}

/// {@template 511_network_authentication_required_http_exception}
/// 511 Network Authentication Required (Http Exception).
/// {@endtemplate}
class NetworkAuthenticationRequiredHttpException extends HttpException {
  /// {@macro 511_network_authentication_required_http_exception}
  const NetworkAuthenticationRequiredHttpException({
    Map<String, dynamic>? data,
    String detail = '',
    Uri? uri,
  }) : super(
          data: data,
          httpStatus: HttpStatus.networkAuthenticationRequired,
          message:
              'Network Authentication Required${detail != '' ? ': ' : ''}$detail',
          uri: uri,
        );
}

/// {@template 599_network_connect_timeout_error_http_exception}
/// 59 Network Authentication Required (Http Exception).
/// {@endtemplate}
class NetworkConnectTimeoutErrorHttpException extends HttpException {
  /// {@macro 599_network_connect_timeout_error_http_exception}
  const NetworkConnectTimeoutErrorHttpException({
    Map<String, dynamic>? data,
    String detail = '',
    Uri? uri,
  }) : super(
          data: data,
          httpStatus: HttpStatus.networkConnectTimeoutError,
          message:
              'Network Connect Timeout Error${detail != '' ? ': ' : ''}$detail',
          uri: uri,
        );
}
