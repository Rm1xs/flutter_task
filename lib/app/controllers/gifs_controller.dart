import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../data/models/gifs_result_model.dart';
import '../data/services/data_state.dart';
import '../data/services/gifs_api_service.dart';

class GifsController extends GetxController with GetTickerProviderStateMixin {
  GifsController();

  final _gisApiService = Get.find<GifsApiService>();

  final searchTEC = TextEditingController();
  ScrollController scrollController = ScrollController();

  Timer? _timer;
  int offset = 0;
  final gifsList = <Data>[].obs;

  final _loading = false.obs;
  bool get loading => _loading.value;
  set loading(bool val) => _loading.value = val;

  final _lazyLoading = false.obs;
  bool get lazyLoading => _lazyLoading.value;
  set lazyLoading(bool val) => _lazyLoading.value = val;

  final _inputLoading = false.obs;
  bool get inputLoading => _inputLoading.value;
  set inputLoading(bool val) => _inputLoading.value = val;

  double _lastScrollOffset = 0.0;

  @override
  void onInit() {
    initScrollController();
    super.onInit();
  }

  @override
  void onClose() {
    searchTEC.dispose();
    gifsList.value = [];
    offset = 0;
    super.onClose();
  }

  void fetchGifs({bool? lazyLoad}) async {
    loading = true;
    DataState<Gifs> result;
    try {
      result = await _gisApiService.fetchGifs(
        search: searchTEC.text,
        listLimit: 10,
        offset: offset,
      );
    } finally {
      loading = false;
    }

    if (result is DataSuccess && result.data != null) {
      List<Data> data = result.data?.data ?? [];
      if (lazyLoad == true) {
        gifsList.value += data;
        WidgetsBinding.instance!.addPostFrameCallback((_) {
          scrollController.jumpTo(_lastScrollOffset);
        });
      } else {
        gifsList.addAll(data);
      }
    }
    if (result is DataFailed) {
      Get.snackbar(
        result.error.toString(),
        "Error",
        colorText: Colors.white,
        backgroundColor: Colors.red,
        icon: const Icon(Icons.add_alert),
      );
    }
  }

  void setSearchQuery() {
    offset = 0;
    gifsList.value = [];
    _startTimer();
  }

  void _startTimer() {
    _timer?.cancel();
    _timer = Timer(const Duration(seconds: 3), fetchGifs);
  }

  void initScrollController() {
    scrollController.addListener(() {
      if (scrollController.position.pixels ==
          scrollController.position.maxScrollExtent) {
        lazyLoading = true;
        if (searchTEC.text.isNotEmpty) {
          offset += 10;
          _lastScrollOffset = scrollController.position.pixels;
          fetchGifs(lazyLoad: true);
          lazyLoading = false;
        }
      }
    });
  }
}
