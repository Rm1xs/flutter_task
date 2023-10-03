import 'package:cached_network_image/cached_network_image.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_task/app/controllers/gifs_controller.dart';
import 'package:flutter_task/app/values/app_colors.dart';
import 'package:get/get.dart';

class GifsListWidget extends GetView<GifsController> {
  const GifsListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => GridView.builder(
        controller: controller.scrollController,
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        physics: const ClampingScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20.0,
          crossAxisSpacing: 20.0,
        ),
        itemCount: controller.gifsList.length,
        itemBuilder: (BuildContext context, int index) {
          final gifUrl =
              controller.gifsList[index].images?.original?.webp ?? '';

          return FlipCard(
            front: CachedNetworkImage(
              key: GlobalKey(),
              imageUrl: gifUrl,
              fit: BoxFit.fill,
              imageBuilder: (context, imageProvider) => Container(
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.PRIMARY_COLOR),
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                  image:
                      DecorationImage(image: imageProvider, fit: BoxFit.fill),
                ),
              ),
              placeholder: (context, url) =>
                  const Center(child: CircularProgressIndicator()),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
            back: Column(
              children: [
                Text(
                  'Title - ${controller.gifsList[index].title}',
                  textAlign: TextAlign.center,
                ),
                Text(
                  'Date - ${controller.gifsList[index].importDatetime}',
                  textAlign: TextAlign.center,
                ),
                Text(
                  'Type - ${controller.gifsList[index].type}',
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
