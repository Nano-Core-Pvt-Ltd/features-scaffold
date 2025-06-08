import 'package:dartz/dartz.dart';

import '../../../../core/network/error/exceptions.dart';
import '../../../../core/network/error/failures.dart';
import '../../domain/repositories/base_{{name}}_repository.dart';
import '../datasources/{{name}}_api.dart';

class {{name.pascalCase()}}Repository implements Base{{name.pascalCase()}}Repository {
  final {{name.pascalCase()}}Api {{name.camelCase()}}Api;
  {{name.pascalCase()}}Repository({required this.{{name.camelCase()}}Api});

  @override
  Future<Either<Failure, {{name.pascalCase()}}Model>> get{{name.pascalCase()}}(
  ) async {
    try {
      final result = await {{name.camelCase()}}Api.get{{name.pascalCase()}}();
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message, e.statusCode));
    } on CancelTokenException catch (e) {
      return Left(CancelTokenFailure(e.message, e.statusCode));
    }
  }
}
