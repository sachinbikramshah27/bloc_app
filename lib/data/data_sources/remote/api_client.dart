import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'api_constant.dart';

import 'api_exception.dart';

class ApiClient {
  late Dio dio;
  late BaseOptions baseOptions;
  late Options options;
  ApiClient() {
    baseOptions = BaseOptions(baseUrl: ApiConstant.mainUrl);
    dio = Dio(baseOptions);
    options = Options(headers: {
      "Authorization": "Bearer 1445|BVkoaAEl3epBMO9S0UoK3dPF6YbjsJVCVx6rmn1T"
    });
  }

  // ---------------Get Request-------------------- //
  Future<Response> getRequest({required String path}) async {
    dio.interceptors.add(PrettyDioLogger());

    try {
      // 404
      var response = await dio.get(path);
      // debugPrint(response.statusCode.toString());
      // debugPrint(response.data.toString());
      return response;
    } on DioException catch (e) {
      // The request was made and the server responded with a status code
      // that falls out of the range of 2xx and is also not 304.

      if (e.response != null) {
        // debugPrint(e.response!.data);
        // debugPrint(e.response!.headers.toString());
        // debugPrint(e.response!.requestbaseOptions.toString());
        throw ApiException(message: e.response!.statusMessage);
      } else {
        // Something happened in setting up or sending the request that triggered an Error
        // debugPrint(e.requestbaseOptions.toString());
        // debugPrint(e.message);
        throw ApiException(message: e.message);
      }
    }
  }

  // --------------- Post Request --------------- //
  Future<Response> postRequest(
      {required String path, required dynamic body}) async {
    dio.interceptors.add(PrettyDioLogger());

    try {
      // 404
      var response = await dio.post(path, data: body, options: options);
      // debugPrint(response.statusCode.toString());
      // debugPrint(response.data.toString());
      return response;
    } on DioException catch (e) {
      // The request was made and the server responded with a status code
      // that falls out of the range of 2xx and is also not 304.

      if (e.response != null) {
        // debugPrint(e.response!.data);
        // debugPrint(e.response!.headers.toString());
        // debugPrint(e.response!.requestbaseOptions.toString());
        throw ApiException(message: e.message);
      } else {
        // Something happened in setting up or sending the request that triggered an Error
        // debugPrint(e.requestbaseOptions.toString());
        // debugPrint(e.message);
        throw ApiException(message: e.message);
      }
    }
  }
}
