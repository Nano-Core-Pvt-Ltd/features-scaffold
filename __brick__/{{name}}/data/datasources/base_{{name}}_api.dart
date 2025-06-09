import '../models/{{name}}_model.dart';

abstract class Base{{name.pascalCase()}}Api {
  Future<{{name.pascalCase()}}Model> get{{name.pascalCase()}}();
}
