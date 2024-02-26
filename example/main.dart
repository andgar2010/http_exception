// Copyright (c) 2024, Andres Garcia (TECH-ANDGAR). All rights reserved.
// Use of this source code
// is governed by a Apache-style license that can be found in the LICENSE file.

// ignore_for_file: no-magic-number

import 'package:http/http.dart' as http;
import 'package:http_exception/http_exception.dart';
import 'package:http_status/http_status.dart';

void main() async {
  exampleHttpStatusFromCode();

  await exampleHttpPost();

  exampleDirectClassHttpException();
}

void exampleHttpStatusFromCode() {
  final HttpException a = HttpStatus.fromCode(422).exception();
  print(a); // -> HttpException [422 - Unprocessable Entity]

  final HttpException b = HttpStatus.fromCode(422)
      .exception(data: <String, dynamic>{'name': 'dart', 'age': 7});
  print(b);
  // -> HttpException [422 Unprocessable Entity], HTTP data = {name: dart, age: 7}

  final HttpException c = HttpStatus.fromCode(422).exception(
    detail: 'Message Customized Detail Exception',
    data: <String, dynamic>{'name': 'dart', 'age': 7},
  );
  print(c);
  // -> HttpException [422 Unprocessable Entity]: Message Customized Detail Exception, HTTP data = {name: dart, age: 7}

  final HttpException d = HttpStatus.fromCode(422).exception(
    detail: 'Message Customized Detail Exception',
    data: <String, dynamic>{'name': 'dart', 'age': 7},
    uri: Uri.parse('http://dart.dev'),
  );
  print(d);
  // -> HttpException [422 Unprocessable Entity]: Message Customized Detail Exception, uri = http://dart.dev, HTTP data = {name: dart, age: 7}
}

Future<void> exampleHttpPost() async {
  final Uri url = Uri.https('example.com', 'whatsit/create');
  final Map<String, String> body = <String, String>{
    'name': 'doodle',
    'color': 'blue',
  };

  final http.Response response = await http.post(url, body: body);

  final int statusCode = response.statusCode;

  // Http status code 200 - 299
  if (statusCode.isSuccessfulHttpStatusCode) {
    print(response.body);
  } else {
    // Automatically generate an HttpException based on the status code outside the 200-299 range
    final HttpException e = statusCode.exception(
      detail: 'Message Customized Detail Exception',
      data: body,
      uri: url,
    );
    print(e);
    // -> HttpException [404 Not Found]: Message Customized Detail Exception, uri = https://example.com/whatsit/create, HTTP data = {name: doodle, color: blue}
  }
}

void exampleDirectClassHttpException() {
  final HttpException g = NotImplementedHttpException(
    detail: 'Message Customized Detail Exception',
    data: const <String, dynamic>{'name': 'dart', 'age': 7},
    uri: Uri.parse('http://dart.dev'),
  );
  print(g);
  // -> HttpException [501 Not Implemented]: Message Customized Detail Exception, uri = http://dart.dev, HTTP data = {name: dart, age: 7}

  final HttpException h = BadGatewayHttpException(
    detail: 'Message Customized Detail Exception',
    data: const <String, dynamic>{'name': 'dart', 'age': 7},
    uri: Uri.parse('http://flutter.dev'),
  );
  print(h);
  // -> HttpException [502 Bad Gateway]: Message Customized Detail Exception, uri = http://dart.dev, HTTP data = {name: dart, age: 7}

  final HttpException i = InvalidSSLCertificateHttpException(
    detail: 'Message Customized Detail Exception',
    uri: Uri.parse('http://localhost:80'),
    data: const <String, dynamic>{'id': 1, 'name': 'Dart'},
  );
  print(i);
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
