import 'package:http_status/http_status.dart';

import '../http_exception.dart';

/// 501 Not Implemented
class NotImplementedException extends HttpException {
  const NotImplementedException([
    Map<String, dynamic>? data,
    String detail = '',
  ]) : super(
          httpStatus: HttpStatus.notImplemented,
          message: 'Not Implemented${detail != '' ? ': ' : ''}$detail',
          data: data,
        );
}

/// 503 Service Unavailable
class ServiceUnavailableException extends HttpException {
  const ServiceUnavailableException([
    Map<String, dynamic>? data,
    String detail = '',
  ]) : super(
          httpStatus: HttpStatus.serviceUnavailable,
          message: 'Service Unavailable${detail != '' ? ': ' : ''}$detail',
          data: data,
        );
}
