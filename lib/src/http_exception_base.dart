// Copyright (c) 2014, Thomas Profelt
// Copyright (c) 2015, Günter Zöchbauer, Thomas Profelt
// Copyright (c) 2021, Diego Perez.
// Copyright (c) 2024, Andres Garcia (TECH-ANDGAR). All rights reserved.
// Use of this source code
// is governed by a Apache-style license that can be found in the LICENSE file.

import 'package:http_status/http_status.dart';

/// A base class for specific HTTP exception classes.
/// [Map] data can be provided to add additional information as the response
/// body.
class HttpException implements Exception {
  const HttpException({
    required this.httpStatus,
    required this.message,
    this.data,
    this.uri,
  });

  final Map<String, dynamic>? data;
  final HttpStatus httpStatus;
  final String message;
  final Uri? uri;

  @override
  bool operator ==(covariant HttpException other) =>
      (identical(this, other)) ||
      runtimeType == other.runtimeType && other.httpStatus == httpStatus;

  @override
  int get hashCode => httpStatus.hashCode;

  @override
  String toString() {
    final stringBuffer = StringBuffer()
      ..write('HTTPException Status ')
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

  Map<String, dynamic> toMap() => <String, dynamic>{
        'httpStatusCode': httpStatus.code,
        'message': message,
        'uri': uri,
      }..addAll(data ?? <String, dynamic>{});
}
