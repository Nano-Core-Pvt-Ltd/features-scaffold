import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/usecases/{{name}}_usecase.dart';

part '{{name}}_event.dart';
part '{{name}}_state.dart';
part '{{name}}_bloc.freezed.dart';

class {{name.pascalCase()}}Bloc extends Bloc<{{name.pascalCase()}}Event, {{name.pascalCase()}}State> {
  final {{name.pascalCase()}}UseCase {{name.camelCase()}}UseCase;
  {{name.pascalCase()}}Bloc({required this.{{name.camelCase()}}UseCase}) : super(_Initial()) {
    on<{{name.pascalCase()}}Event>((event, emit) {
      // TODO: implement event handler
    });
  }
}
