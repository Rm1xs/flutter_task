import 'package:dio/dio.dart';

import '../iterfaces/i_api_client.dart';

class ApiClient implements IApiClient {
  final Dio _instance;

  @override
  Dio get instance => _instance;
  ApiClient({
    required Dio dio,
    bool isBackground = false,
    List<Interceptor> interceptors = const [],
    int? connectTimeout = 2,
    int? receiveTimeout = 2,
  }) : _instance = dio {
    _initOptions(
      connectTimeout: connectTimeout,
      receiveTimeout: receiveTimeout,
    );
    _addInterceptors(interceptors);
  }

  void _initOptions({
    int? connectTimeout,
    int? receiveTimeout,
  }) {
    _instance.options = BaseOptions(
      baseUrl: 'https://api.giphy.com/v1',
      headers: {
        'Content-type': 'application/json',
        'Accept': 'application/json',
      },
      connectTimeout: Duration(minutes: connectTimeout ?? 10),
      receiveTimeout: Duration(minutes: receiveTimeout ?? 10),
    );
  }

  void _addInterceptors(List<Interceptor> interceptors) {
    for (final interceptor in interceptors) {
      _instance.interceptors.add(interceptor);
    }
  }
}
