// ignore_for_file: dead_code

import 'package:dio_curl_interceptor/dio_curl_interceptor.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

abstract class AppConfig {
  static const domain = 'https://dev.codeunion.kz/ailat/api';

  static final dioLoggers = [
    if (kDebugMode && true) ...[
      PrettyDioLogger(
        logPrint: print,
        request: true,
        requestBody: true,
        requestHeader: true,
        responseBody: true,
        responseHeader: false,
      ),
      if (!true) CurlInterceptor(),
    ],
  ];
}
