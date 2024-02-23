// Copyright (c) 2014, Thomas Profelt
// Copyright (c) 2015, Günter Zöchbauer, Thomas Profelt
// Copyright (c) 2021, Diego Perez.
// Copyright (c) 2024, Andres Garcia (TECH-ANDGAR). All rights reserved.
// Use of this source code
// is governed by a Apache-style license that can be found in the LICENSE file.

import 'package:http_status/http_status.dart';
import 'package:meta/meta.dart';

/// {@template http_exception}
/// A base class for specific HTTP exception classes.
/// An optional [Map] named [data] can be provided to add additional
/// information as the response body.
/// {@endtemplate}
@immutable
class HttpException implements Exception {
  /// Constructs an [HttpException] with detailed information about the failure.
  ///
  /// - [httpStatus]: The HTTP status code associated with the exception.
  ///
  /// - [message]: A human-readable message providing more details about the error.
  ///
  /// - [data]: Optional. Additional data about the exception. It can carry extra information pertinent to the error.
  ///
  /// - [uri]: Optional. The URI associated with the HTTP request that resulted in this error.
  const HttpException({
    required this.httpStatus,
    required this.message,
    this.data,
    this.uri,
  });

  /// Additional data about the exception as a map.
  ///
  /// This can include any additional information pertinent to the error,
  /// such as error codes, nested messages, or other details that can help
  /// with debugging.
  final Map<String, dynamic>? data;

  /// The HTTP status code associated with the exception.
  ///
  /// This code corresponds to various HTTP status codes,
  /// such as 404 for Not Found, 403 for Forbidden, etc.
  /// It is used to identify the type of HTTP error that occurred.
  final HttpStatus httpStatus;

  /// A human-readable message providing more details about the error.
  ///
  /// This message can offer additional context about what went wrong,
  /// potentially including steps to resolve the issue or a more detailed
  /// explanation of the error.
  final String message;

  /// The URI associated with the HTTP request that resulted in this error.
  ///
  /// This optional parameter can be useful for logging and debugging, helping
  /// identify the exact request that failed.
  final Uri? uri;

  /// Compares this HttpException instance to another object.
  ///
  /// Two instances of [HttpException] are considered equal if they have
  /// the same runtime type and [httpStatus].
  @override
  bool operator ==(covariant HttpException other) =>
      (identical(this, other)) ||
      runtimeType == other.runtimeType && other.httpStatus == httpStatus;

  /// Provides a hash code for this [HttpException] instance.
  ///
  /// The hash code is based on the [httpStatus] of the exception.
  @override
  int get hashCode => httpStatus.hashCode;

  /// Converts the [HttpException] to a [String] representation.
  ///
  /// This method returns a string that includes the HTTP status code,
  /// the error message, and optionally, the related URI and any additional
  /// HTTP data, making it useful for logging or debugging purposes.
  @override
  String toString() {
    final StringBuffer stringBuffer = StringBuffer()
      ..write('HttpException Status ')
      ..write(httpStatus.code)
      ..write(' - ')
      ..write(message.trim());

    if (uri != null) {
      stringBuffer.write(', uri = $uri');
    }
    if (data != null) {
      stringBuffer.write(', HTTP data = $data');
    }

    return stringBuffer.toString();
  }

  /// Converts the [HttpException] instance to a [Map].
  ///
  /// The resulting map includes keys for `httpStatusCode`, `message`, and `uri`,
  /// alongside any additional data provided through [data].
  /// This can be useful for serializing the exception details, e.g.,
  /// sending over network or saving in logs.
  ///
  /// Returns a [Map<String, dynamic>] representation of the [HttpException].
  Map<String, dynamic> toMap() => <String, dynamic>{
        'httpStatusCode': httpStatus.code,
        'message': message,
        'uri': uri?.toString(),
      }..addAll(data ?? <String, dynamic>{});
}
