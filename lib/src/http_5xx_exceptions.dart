import 'package:http_status/http_status.dart';

import '../http_exception.dart';

/// 501 Not Implemented
class NotImplementedException extends HttpException {
  const NotImplementedException([
    Map<String, dynamic>? data,
    String detail = '',
  ]) : super(
          HttpStatusCode.notImplemented,
          'Not Implemented${detail != '' ? ': ' : ''}$detail',
          data,
        );
}

/// 503 Service Unavailable
class ServiceUnavailableException extends HttpException {
  const ServiceUnavailableException([
    Map<String, dynamic>? data,
    String detail = '',
  ]) : super(
          HttpStatusCode.serviceUnavailable,
          'Service Unavailable${detail != '' ? ': ' : ''}$detail',
          data,
        );
}
