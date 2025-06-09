import 'package:dartz/dartz.dart';

import '../../../../../core/network/error/failures.dart';
import '../../../../__brick__{{name}}/data/models/tags_model.dart';

abstract class Base{{name.pascalCase()}}Repository {
  Future<Either<Failure, {{name.pascalCase()}}Model>> get{{name.pascalCase()}}();
}
