import 'package:dio/dio.dart';

import '../../values/app_exception.dart';
import '../models/gifs_result_model.dart';
import 'data_state.dart';

class GifsApiService {
  final Dio _client;

  GifsApiService(this._client);

  // GET DATA ------------------------------------------------------------------
  Future<DataState<Gifs>> fetchGifs({
    required String search,
    required int listLimit,
    required int offset,
  }) async {
    try {
      final httpResponse = await _client.get(
        '/gifs/search',
        queryParameters: {
          "api_key": "oTv588bTL2iGOPpBHH2qSf2cRYKjl4I3",
          "q": search,
          "limit": listLimit,
          "offset": offset,
          "rating": "g",
          "lang": "uk",
          "bundle": "messaging_non_clips",
        },
      );

      var responseModel = Gifs.fromJson(httpResponse.data);
      if (responseModel.data != null) {
        return DataSuccess(responseModel);
      }
      throw AppException(responseModel.meta?.status.toString());
    } on Exception catch (error) {
      return DataFailed(error);
    }
  }
}
