import 'package:http_status/http_status.dart';

/// A bas class for specific HTTP exception classes.
/// [Map] data can be provided to add additional information as the response
/// body.
class HttpException implements Exception {
  const HttpException([
    this.status = HttpStatusCode.internalServerError,
    this.message = 'Internal Server Error',
    this.data,
  ]);

  final Map<String, dynamic>? data;
  final String message;
  final int status;

  @override
  String toString() => 'Status $status: $message';

  Map<String, dynamic> toMap() => <String, dynamic>{
        'status': status,
        'message': message,
      }..addAll(data ?? <String, dynamic>{});
}
