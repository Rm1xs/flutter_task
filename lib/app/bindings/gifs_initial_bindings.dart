import 'package:get/get.dart';

import '../controllers/gifs_controller.dart';
import '../data/services/api_client.dart';
import '../data/services/gifs_api_service.dart';

class GifsInitialBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GifsController(), fenix: true);
    Get.lazyPut(
      () => GifsApiService(Get.find<ApiClient>().instance),
      fenix: true,
    );
  }
}
