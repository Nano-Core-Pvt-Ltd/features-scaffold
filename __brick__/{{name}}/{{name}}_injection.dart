import '../../../core/constants/injection.dart';
import '../../../core/network/dio_network.dart';
import 'data/datasources/{{name}}_api.dart';
import 'data/repositories/{{name}}_repository.dart';
import 'domain/repositories/base_{{name}}_repository.dart';
import 'domain/usecases/{{name}}_usecase.dart';

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
