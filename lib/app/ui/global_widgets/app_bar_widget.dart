import 'package:flutter/material.dart';
import 'package:flutter_task/app/controllers/gifs_controller.dart';
import 'package:get/get.dart';

import '../../values/app_colors.dart';

class AppBarWidget extends GetView<GifsController> {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Stack(
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            decoration: BoxDecoration(
              border: Border.all(
                color: controller.searchTEC.text.isNotEmpty
                    ? AppColors.PRIMARY_ELEMENT_COLOR
                    : AppColors.GREY_COLOR,
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: TextField(
              controller: controller.searchTEC,
              style: const TextStyle(
                color: Colors.white,
                decoration: TextDecoration.none,
              ),
              decoration: InputDecoration(
                hintText: 'Search gifs',
                hintStyle: const TextStyle(
                  color: AppColors.GREY_COLOR,
                ),
                border: InputBorder.none,
                prefixIcon: Icon(
                  Icons.search,
                  color: controller.searchTEC.text.isNotEmpty
                      ? AppColors.PRIMARY_ELEMENT_COLOR
                      : AppColors.GREY_COLOR,
                ),
              ),
              onChanged: (value) {
                controller.loading = true;
                controller.setSearchQuery();
              },
            ),
          ),
          if (controller.loading)
            const Positioned(
              top: 10,
              right: 10,
              child: SizedBox(
                height: 5,
                width: 5,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    AppColors.PRIMARY_ELEMENT_COLOR,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
