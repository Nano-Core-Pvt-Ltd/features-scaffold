import '../../../core/constants/injection.dart';
import '../../../core/network/dio_network.dart';
import '../../__brick__{{name}}/data/datasources/{{name.lowerCase()}}_api.dart';
import '../../__brick__{{name}}/data/repositories/{{name.lowerCase()}}_repository.dart';
import '../../__brick__{{name}}/domain/repositories/base_{{name.lowerCase()}}_repository.dart';
import '../../__brick__{{name}}/domain/usecases/{{name.lowerCase()}}_usecase.dart';

init{{name.pascalCase()}}Injections() {
  getIt.registerLazySingleton<{{name.pascalCase()}}Api>(
    () => {{name.pascalCase()}}Api(dio: DioNetwork.appAPI),
  );
  getIt.registerLazySingleton<Base{{name.pascalCase()}}Repository>(
    () => {{name.pascalCase()}}Repository({{name.lowerCase()}}Api: getIt()),
  );
  getIt.registerLazySingleton<{{name.pascalCase()}}UseCase>(
    () => {{name.pascalCase()}}UseCase(base{{name.pascalCase()}}Repository: getIt()),
  );
}
