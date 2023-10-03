import 'package:dio/dio.dart';

abstract class IApiClient {
  Dio get instance;
}
