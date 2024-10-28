import 'package:dio/dio.dart';

import 'application_error.dart';

class ApiResponse<T> {
  T? data;
  Response? response;
  late Status status;
  late bool? success;
  ApplicationError? error;

  ApiResponse.success(this.response) {
    success = true;
    status = Status.ok;
    data = response?.data;
  }

  ApiResponse.failed(ApplicationError this.error) {
    success = false;
    status = Status.failed;
  }

  handleResponse({Function? onSuccess, Function? onFailed}) async {
    if (status == Status.ok) {
      await onSuccess?.call();
    } else if (status == Status.failed) {
      await onFailed?.call();
    }
    return Future.value();
  }
}

enum Status { ok, failed }
