// Copyright (c) 2014, Thomas Profelt
// Copyright (c) 2015, Günter Zöchbauer, Thomas Profelt
// Copyright (c) 2021, Diego Perez.
// Copyright (c) 2024, Andres Garcia (TECH-ANDGAR). All rights reserved.
// Use of this source code
// is governed by a Apache-style license that can be found in the LICENSE file.

import 'package:http_status/http_status.dart';

import '../http_exception.dart';

/// {@template 500_internal_server_error_http_exception}
/// 500 Internal Server Error.
/// {@endtemplate}
class InternalServerErrorHttpException extends HttpException {
  const InternalServerErrorHttpException({
    super.data,
    String detail = '',
    super.uri,
  }) : super(
          httpStatus: HttpStatus.internalServerError,
          message: 'Internal Server Error${detail != '' ? ': ' : ''}$detail',
        );
}

/// {@macro 501_not_implemented_http_exception}
@Deprecated('Use [NotImplementedHttpException] instead.')
class NotImplementedException extends NotImplementedHttpException {
  const NotImplementedException([
    Map<String, dynamic>? data,
    String detail = '',
  ]) : super(data: data, detail: detail);
}

/// {@template 501_not_implemented_http_exception}
/// 501 Not Implemented (Http Exception).
/// {@endtemplate}
class NotImplementedHttpException extends HttpException {
  const NotImplementedHttpException({
    super.data,
    String detail = '',
    super.uri,
  }) : super(
          httpStatus: HttpStatus.notImplemented,
          message: 'Not Implemented${detail != '' ? ': ' : ''}$detail',
        );
}

/// {@template 502_bad_gateway_http_exception}
/// 502 Bad Gateway.
/// {@endtemplate}
class BadGatewayHttpException extends HttpException {
  const BadGatewayHttpException({
    super.data,
    String detail = '',
    super.uri,
  }) : super(
          httpStatus: HttpStatus.badGateway,
          message: 'Bad Gateway${detail != '' ? ': ' : ''}$detail',
        );
}

/// {@macro 503_service_unavailable_http_exception}
@Deprecated('Use [ServiceUnavailableHttpException] instead.')
class ServiceUnavailableException extends ServiceUnavailableHttpException {
  const ServiceUnavailableException([
    Map<String, dynamic>? data,
    String detail = '',
  ]) : super(data: data, detail: detail);
}

/// {@template 503_service_unavailable_http_exception}
/// 503 Service Unavailable (Http Exception).
/// {@endtemplate}
class ServiceUnavailableHttpException extends HttpException {
  const ServiceUnavailableHttpException({
    super.data,
    String detail = '',
    super.uri,
  }) : super(
          httpStatus: HttpStatus.serviceUnavailable,
          message: 'Service Unavailable${detail != '' ? ': ' : ''}$detail',
        );
}

/// {@template 504_gateway_timeout_http_exception}
/// 504 Gateway Timeout.
/// {@endtemplate}
class GatewayTimeoutHttpException extends HttpException {
  const GatewayTimeoutHttpException({
    super.data,
    String detail = '',
    super.uri,
  }) : super(
          httpStatus: HttpStatus.gatewayTimeout,
          message: 'Gateway Timeout${detail != '' ? ': ' : ''}$detail',
        );
}

/// {@template 505_http_version_not_supported_http_exception}
/// 505 Http Version Not Supported.
/// {@endtemplate}
class HttpVersionNotSupportedHttpException extends HttpException {
  const HttpVersionNotSupportedHttpException({
    super.data,
    String detail = '',
    super.uri,
  }) : super(
          httpStatus: HttpStatus.httpVersionNotSupported,
          message:
              'Http Version Not Supported${detail != '' ? ': ' : ''}$detail',
        );
}

/// {@template 506_insufficient_storage_http_exception}
/// 506 Insufficient Storage.
/// {@endtemplate}
class InsufficientStorageHttpException extends HttpException {
  const InsufficientStorageHttpException({
    super.data,
    String detail = '',
    super.uri,
  }) : super(
          httpStatus: HttpStatus.insufficientStorage,
          message: 'Insufficient Storage${detail != '' ? ': ' : ''}$detail',
        );
}

/// {@template 511_network_authentication_required_http_exception}
/// 511 Network Authentication Required.
/// {@endtemplate}
class NetworkAuthenticationRequiredHttpException extends HttpException {
  const NetworkAuthenticationRequiredHttpException({
    super.data,
    String detail = '',
    super.uri,
  }) : super(
          httpStatus: HttpStatus.networkAuthenticationRequired,
          message:
              'Network Authentication Required${detail != '' ? ': ' : ''}$detail',
        );
}
