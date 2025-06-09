import 'package:dartz/dartz.dart';

import '../../../../../core/network/error/failures.dart';
import '../repositories/base_{{name}}_repository.dart';

class {{name.pascalCase()}}UseCase {
  final Base{{name.pascalCase()}}Repository base{{name.pascalCase()}}Repository;
  {{name.pascalCase()}}UseCase({required this.base{{name.pascalCase()}}Repository});

  Future<Either<Failure, {{name.pascalCase()}}Model>> get{{name.pascalCase()}}() async {
    final result = await base{{name.pascalCase()}}Repository.get{{name.pascalCase()}}();
    return result.fold(
      (l) {
        return Left(l);
      },
      (r) async {
        return Right(r);
      },
    );
  }
}
