import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../controllers/gifs_controller.dart';
import '../../values/app_colors.dart';
import '../global_widgets/app_bar_widget.dart';
import '../global_widgets/app_search_loading_indicator.dart';
import '../global_widgets/gifs_list_widget.dart';

class HomePage extends GetView<GifsController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final refreshController = RefreshController(initialRefresh: false);
    //final gifController = GifController();

    // ignore: no_leading_underscores_for_local_identifiers
    void _onRefresh() {
      controller.fetchGifs();
      refreshController.refreshCompleted();
    }

    return Scaffold(
      backgroundColor: AppColors.PRIMARY_COLOR,
      body: SafeArea(
        child: SmartRefresher(
          onRefresh: _onRefresh,
          controller: refreshController,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Column(
              children: [
                AppSearchLoadingIndicator(controller.lazyLoading),
                const AppBarWidget(),
                const SizedBox(
                  height: 15,
                ),
                const Expanded(child: GifsListWidget()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
