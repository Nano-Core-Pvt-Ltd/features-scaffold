import 'package:dio/dio.dart';

import '../../../../core/constants/app_constants.dart';
import '../../../../core/network/error/dio_error_handler.dart';
import '../../../../core/network/error/exceptions.dart';
import '../models/{{name}}_model.dart';
import 'base_{{name}}_api.dart';

class {{name.pascalCase()}}Api implements Base{{name.pascalCase()}}Api {
  final Dio dio;
  CancelToken cancelToken = CancelToken();
  {{name.pascalCase()}}Api({required this.dio});

  @override
  Future<{{name.pascalCase()}}Model> get{{name.pascalCase()}}() async {
    try {
      final result = await dio.get(
        '${AppConstants.mainApiUrl}/tags?page=$pageNumber',
      );
      if (result.data == null) {
        throw ServerException("Unknown Error", result.statusCode);
      }
      return {{name.pascalCase()}}Model.fromJson(result.data);
    } on DioException catch (e) {
      if (e.type == DioExceptionType.cancel) {
        throw CancelTokenException(handleDioError(e), e.response?.statusCode);
      } else if (e.type == DioExceptionType.badResponse) {
        throw ServerException(e.toString(), null);
      } else {
        throw ServerException(handleDioError(e), e.response?.statusCode);
      }
    } on ServerException {
      rethrow;
    } catch (e) {
      throw ServerException(e.toString(), null);
    }
  }
}
