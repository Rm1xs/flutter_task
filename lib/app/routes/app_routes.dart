import 'package:get/get.dart';

import '../bindings/gifs_initial_bindings.dart';
import '../ui/pages/home_page.dart';

class AppRoutes {
  static List<GetPage> get getRoutes => <GetPage>[
        GetPage(
          name: '/home',
          page: () => const HomePage(),
          bindings: [
            GifsInitialBinding(),
          ],
          transition: Transition.zoom,
        ),
      ];
}
