// Copyright (c) 2024, Andres Garcia (TECH-ANDGAR). All rights reserved.
// Use of this source code
// is governed by a Apache-style license that can be found in the LICENSE file.

// ignore_for_file: no-magic-number

import 'package:http_exception/http_exception.dart';
import 'package:http_status/http_status.dart';

void main() {
  final HttpException a = HttpStatus.fromCode(422).exception();
  print(a); // -> HttpException [422 - Unprocessable Entity]

  final HttpException b = HttpStatus.fromCode(422)
      .exception(data: <String, dynamic>{'name': 'dart', 'age': 7});
  print(b);
  // -> HttpException [422 Unprocessable Entity], HTTP data = {name: dart, age: 7}

  final HttpException c = HttpStatus.fromCode(422).exception(
    data: <String, dynamic>{'name': 'dart', 'age': 7},
    detail: 'Message Customized Detail Exception',
  );
  print(c);
  // -> HttpException [422 Unprocessable Entity]: Message Customized Detail Exception, HTTP data = {name: dart, age: 7}

  final HttpException d = HttpStatus.fromCode(422).exception(
    data: <String, dynamic>{'name': 'dart', 'age': 7},
    detail: 'Message Customized Detail Exception',
    uri: Uri.parse('http://dart.dev'),
  );
  print(d);
  // -> HttpException [422 Unprocessable Entity]: Message Customized Detail Exception, uri = http://dart.dev, HTTP data = {name: dart, age: 7}

  final HttpException e = NotImplementedHttpException(
    data: const <String, dynamic>{'name': 'dart', 'age': 7},
    detail: 'Message Customized Detail Exception',
    uri: Uri.parse('http://dart.dev'),
  );
  print(e);
  // -> HttpException [501 Not Implemented]: Message Customized Detail Exception, uri = http://dart.dev, HTTP data = {name: dart, age: 7}

  final HttpException f = BadGatewayHttpException(
    data: const <String, dynamic>{'name': 'dart', 'age': 7},
    detail: 'Message Customized Detail Exception',
    uri: Uri.parse('http://flutter.dev'),
  );
  print(f);
  // -> HttpException [502 Bad Gateway]: Message Customized Detail Exception, uri = http://dart.dev, HTTP data = {name: dart, age: 7}

  final HttpException g = InvalidSSLCertificateHttpException(
    detail: 'Message Customized Detail Exception',
    uri: Uri.parse('http://localhost:80'),
    data: const <String, dynamic>{'id': 1, 'name': 'Dart'},
  );
  print(g);
  // -> HttpException [888 InvalidSSLCertificate]: Message Customized Detail Exception, uri = http://localhost, HTTP data = {id: 1, name: Dart}
}

// creating custom exception
class InvalidSSLCertificateHttpException extends HttpException {
  InvalidSSLCertificateHttpException({
    super.data,
    super.detail = '',
    super.uri,
  }) : super(
          httpStatus: HttpStatus(
            code: 888,
            name: 'InvalidSSLCertificate',
            description: 'InvalidSSLCertificate description',
          ),
        );
}
