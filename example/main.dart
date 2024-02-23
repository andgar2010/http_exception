// Copyright (c) 2024, Andres Garcia (TECH-ANDGAR). All rights reserved.
// Use of this source code
// is governed by a Apache-style license that can be found in the LICENSE file.

import 'package:http_exception/http_exception.dart';
import 'package:http_status/http_status.dart';

void main() {
  final HttpException a = HttpStatus.fromCode(422).exception();
  print(a); // -> HTTP Status 422 - Unprocessable Entity

  final HttpException b = HttpStatus.fromCode(422)
      .exception(data: <String, dynamic>{'name': 'dart', 'age': 7});
  print(b);
  // -> HttpException Status 422 - Unprocessable Entity, HTTP data = {name: dart, age: 7}

  final HttpException c = HttpStatus.fromCode(422).exception(
    data: <String, dynamic>{'name': 'dart', 'age': 7},
    detail: 'Message Customized Detail Exception',
  );
  print(c);
  // -> HttpException Status 422 - Unprocessable Entity: Message Customized Detail Exception, HTTP data = {name: dart, age: 7}

  final HttpException d = HttpStatus.fromCode(422).exception(
    data: <String, dynamic>{'name': 'dart', 'age': 7},
    detail: 'Message Customized Detail Exception',
    uri: Uri.parse('http://dart.dev'),
  );
  print(d);
  // -> HttpException Status 422 - Unprocessable Entity: Message Customized Detail Exception, uri = http://dart.dev, HTTP data = {name: dart, age: 7}

  // TODO(andgar2010): Note: 'NotImplementedException' is deprecated and shouldn't be used, Use [NotImplementedHttpException] instead.

  // ignore: deprecated_member_use_from_same_package
  const HttpException e = NotImplementedException(
    <String, dynamic>{'name': 'dart', 'age': 7},
    'Message Customized Detail Exception',
  );
  print(e);
  // -> HttpException Status 501 - Not Implemented: Message Customized Detail Exception, HTTP data = {name: dart, age: 7}

  final HttpException f = NotImplementedHttpException(
    data: const <String, dynamic>{'name': 'dart', 'age': 7},
    detail: 'Message Customized Detail Exception',
    uri: Uri.parse('http://dart.dev'),
  );
  print(f);
  // -> HttpException Status 501 - Not Implemented: Message Customized Detail Exception, uri = http://dart.dev, HTTP data = {name: dart, age: 7}

  final HttpException g = BadGatewayHttpException(
    data: const <String, dynamic>{'name': 'dart', 'age': 7},
    detail: 'Message Customized Detail Exception',
    uri: Uri.parse('http://dart.dev'),
  );
  print(g);
  // -> HttpException Status 502 - Bad Gateway: Message Customized Detail Exception, uri = http://dart.dev, HTTP data = {name: dart, age: 7}

  final HttpException h = InvalidSSLCertificateHttpException(
    detail: 'Message Customized Detail Exception',
    uri: Uri.parse('http://localhost:80'),
    data: const <String, dynamic>{'id': 1, 'name': 'Dart'},
  );
  print(h);
  // -> HttpException Status 888 - InvalidSSLCertificate: Message Customized Detail Exception, uri = http://localhost, HTTP data = {id: 1, name: Dart}
}

// creating custom http status
class CustomHttpStatus extends HttpStatus {
  CustomHttpStatus({
    required int code,
    required String name,
    required String description,
  }) : super(code: code, name: name, description: description);
}

// creating custom exception
class InvalidSSLCertificateHttpException extends HttpException {
  InvalidSSLCertificateHttpException({
    Map<String, dynamic>? data,
    String detail = '',
    Uri? uri,
  }) : super(
          data: data,
          httpStatus: CustomHttpStatus(
            code: 888,
            name: 'InvalidSSLCertificate',
            description: 'InvalidSSLCertificate description',
          ),
          message: 'InvalidSSLCertificate${detail != '' ? ': ' : ''}$detail',
          uri: uri,
        );
}
