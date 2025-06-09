import 'package:dartz/dartz.dart';

import '../../../../../core/network/error/failures.dart';
import '../../data/models/{{name}}_model.dart';

abstract class Base{{name.pascalCase()}}Repository {
  Future<Either<Failure, {{name.pascalCase()}}Model>> get{{name.pascalCase()}}();
}
