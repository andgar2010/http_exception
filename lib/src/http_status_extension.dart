// Copyright (c) 2024, Andres Garcia (TECH-ANDGAR). All rights reserved.
// Use of this source code
// is governed by a Apache-style license that can be found in the LICENSE file.

import 'package:http_status/http_status.dart';

import '../http_exception.dart';

extension HttpStatusExtension on HttpStatus {
  HttpException exception({
    Map<String, dynamic>? data,
    String detail = '',
    Uri? uri,
  }) {
    // 4xx Client Error.
    if (this == HttpStatus.badRequest) {
      return BadRequestHttpException(
        data: data,
        detail: detail,
        uri: uri,
      );
    } else if (this == HttpStatus.unauthorized) {
      return UnauthorizedHttpException(
        data: data,
        detail: detail,
        uri: uri,
      );
    } else if (this == HttpStatus.paymentRequired) {
      return PaymentRequiredHttpException(
        data: data,
        detail: detail,
        uri: uri,
      );
    } else if (this == HttpStatus.forbidden) {
      return ForbiddenHttpException(
        data: data,
        detail: detail,
        uri: uri,
      );
    } else if (this == HttpStatus.notFound) {
      return NotFoundHttpException(
        data: data,
        detail: detail,
        uri: uri,
      );
    } else if (this == HttpStatus.methodNotAllowed) {
      return MethodNotAllowedHttpException(
        data: data,
        detail: detail,
        uri: uri,
      );
    } else if (this == HttpStatus.notAcceptable) {
      return NotAcceptableHttpException(
        data: data,
        detail: detail,
        uri: uri,
      );
    } else if (this == HttpStatus.proxyAuthenticationRequired) {
      return ProxyAuthenticationRequiredHttpException(
        data: data,
        detail: detail,
        uri: uri,
      );
    } else if (this == HttpStatus.requestTimeout) {
      return RequestTimeoutHttpException(
        data: data,
        detail: detail,
        uri: uri,
      );
    } else if (this == HttpStatus.conflict) {
      return ConflictHttpException(
        data: data,
        detail: detail,
        uri: uri,
      );
    } else if (this == HttpStatus.gone) {
      return GoneHttpException(
        data: data,
        detail: detail,
        uri: uri,
      );
    } else if (this == HttpStatus.lengthRequired) {
      return LengthRequiredHttpException(
        data: data,
        detail: detail,
        uri: uri,
      );
    } else if (this == HttpStatus.preconditionFailed) {
      return PreconditionFailedHttpException(
        data: data,
        detail: detail,
        uri: uri,
      );
    } else if (this == HttpStatus.requestEntityTooLarge) {
      return RequestEntityTooLargeHttpException(
        data: data,
        detail: detail,
        uri: uri,
      );
    } else if (this == HttpStatus.requestUriTooLong) {
      return RequestUriTooLongHttpException(
        data: data,
        detail: detail,
        uri: uri,
      );
    } else if (this == HttpStatus.unsupportedMediaType) {
      return UnsupportedMediaTypeHttpException(
        data: data,
        detail: detail,
        uri: uri,
      );
    } else if (this == HttpStatus.requestedRangeNotSatisfiable) {
      return RequestedRangeNotSatisfiableHttpException(
        data: data,
        detail: detail,
        uri: uri,
      );
    } else if (this == HttpStatus.expectationFailed) {
      return ExpectationFailedHttpException(
        data: data,
        detail: detail,
        uri: uri,
      );
    } else if (this == HttpStatus.imATeapot) {
      return ImATeapotHttpException(
        data: data,
        detail: detail,
        uri: uri,
      );
    } else if (this == HttpStatus.insufficientSpaceOnResource) {
      return InsufficientSpaceOnResourceHttpException(
        data: data,
        detail: detail,
        uri: uri,
      );
    } else if (this == HttpStatus.methodFailure) {
      return MethodFailureHttpException(
        data: data,
        detail: detail,
        uri: uri,
      );
    } else if (this == HttpStatus.misdirectedRequest) {
      return MisdirectedRequestHttpException(
        data: data,
        detail: detail,
        uri: uri,
      );
    } else if (this == HttpStatus.unprocessableEntity) {
      return UnprocessableEntityHttpException(
        data: data,
        detail: detail,
        uri: uri,
      );
    } else if (this == HttpStatus.locked) {
      return LockedHttpException(
        data: data,
        detail: detail,
        uri: uri,
      );
    } else if (this == HttpStatus.failedDependency) {
      return FailedDependencyHttpException(
        data: data,
        detail: detail,
        uri: uri,
      );
    } else if (this == HttpStatus.upgradeRequired) {
      return UpgradeRequiredHttpException(
        data: data,
        detail: detail,
        uri: uri,
      );
    } else if (this == HttpStatus.preconditionRequired) {
      return PreconditionRequiredHttpException(
        data: data,
        detail: detail,
        uri: uri,
      );
    } else if (this == HttpStatus.tooManyRequests) {
      return TooManyRequestsHttpException(
        data: data,
        detail: detail,
        uri: uri,
      );
    } else if (this == HttpStatus.requestHeaderFieldsTooLarge) {
      return RequestHeaderFieldsTooLargeHttpException(
        data: data,
        detail: detail,
        uri: uri,
      );
    } else if (this == HttpStatus.connectionClosedWithoutResponse) {
      return ConnectionClosedWithoutResponseHttpException(
        data: data,
        detail: detail,
        uri: uri,
      );
    } else if (this == HttpStatus.unavailableForLegalReasons) {
      return UnavailableForLegalReasonsHttpException(
        data: data,
        detail: detail,
        uri: uri,
      );
    } else if (this == HttpStatus.clientClosedRequest) {
      return ClientClosedRequestHttpException(
        data: data,
        detail: detail,
        uri: uri,
      );
    }
    // 5xx Server Error.
    else if (this == HttpStatus.internalServerError) {
      return InternalServerErrorHttpException(
        data: data,
        detail: detail,
        uri: uri,
      );
    } else if (this == HttpStatus.notImplemented) {
      return NotImplementedHttpException(
        data: data,
        detail: detail,
        uri: uri,
      );
    } else if (this == HttpStatus.badGateway) {
      return BadGatewayHttpException(
        data: data,
        detail: detail,
        uri: uri,
      );
    } else if (this == HttpStatus.serviceUnavailable) {
      return ServiceUnavailableHttpException(
        data: data,
        detail: detail,
        uri: uri,
      );
    } else if (this == HttpStatus.gatewayTimeout) {
      return GatewayTimeoutHttpException(
        data: data,
        detail: detail,
        uri: uri,
      );
    } else if (this == HttpStatus.httpVersionNotSupported) {
      return HttpVersionNotSupportedHttpException(
        data: data,
        detail: detail,
        uri: uri,
      );
    } else if (this == HttpStatus.variantAlsoNegotiates) {
      return VariantAlsoNegotiatesHttpException(
        data: data,
        detail: detail,
        uri: uri,
      );
    } else if (this == HttpStatus.insufficientStorage) {
      return InsufficientStorageHttpException(
        data: data,
        detail: detail,
        uri: uri,
      );
    } else if (this == HttpStatus.loopDetected) {
      return LoopDetectedHttpException(
        data: data,
        detail: detail,
        uri: uri,
      );
    } else if (this == HttpStatus.notExtended) {
      return NotExtendedHttpException(
        data: data,
        detail: detail,
        uri: uri,
      );
    } else if (this == HttpStatus.networkAuthenticationRequired) {
      return NetworkAuthenticationRequiredHttpException(
        data: data,
        detail: detail,
        uri: uri,
      );
    } else if (this == HttpStatus.networkConnectTimeoutError) {
      return NetworkConnectTimeoutErrorHttpException(
        data: data,
        detail: detail,
        uri: uri,
      );
    } else {
      return HttpException(
        httpStatus: this,
        message: '$name${detail != '' ? ': ' : ''}$detail',
        uri: uri,
        data: data,
      );
    }
  }
}
