import 'package:dio/dio.dart';
import 'package:get/get.dart';

import 'api_client.dart';

class DioInit {
  static void init() {
    Get.put(
      ApiClient(
        dio: Dio(),
      ),
      permanent: true,
    );
  }
}
