import 'package:dio/dio.dart';
import 'package:get/get.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    const timeout = Duration(seconds: 8);
    Get.lazyPut(
      () => Dio(
        BaseOptions(
          baseUrl: 'https://my-json-server.typicode.com/tractian/fake-api/',
          sendTimeout: timeout,
          connectTimeout: timeout,
          receiveTimeout: timeout,
        ),
      ),
    );
  }
}
