import '../../../../home/data/models/home_model/home_model.dart';
import '../../../../__brick__{{name}}/data/models/tags_model.dart';

abstract class Base{{name.pascalCase()}}Api {
  Future<{{name.pascalCase()}}Model> get{{name.pascalCase()}}();
}
