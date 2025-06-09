part of '{{name}}_imports.dart';

@RoutePage()
class {{name.pascalCase()}} extends StatelessWidget {
  const {{name.pascalCase()}} ({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => {{name.pascalCase()}}Bloc({{name.pascalCase()}}UseCase: getIt<{{name.pascalCase()}}UseCase>()),
      child: {{name.pascalCase()}}View(),
    );
  }
}

class {{name.pascalCase()}}View extends StatefulWidget {
  const {{name.pascalCase()}}View ({super.key});

  @override
  State<{{name.pascalCase()}}View> createState() => _{{name.pascalCase()}}ViewState();
}

class _{{name.pascalCase()}}ViewState extends State<{{name.pascalCase()}}View> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
