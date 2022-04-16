import 'package:{{project_name}}/presentation/{{#android}}android{{/android}}{{#ios}}ios{{/ios}}/core/core.dart'; 

part 'widgets.dart';

class {{name.pascalCase()}}Page extends Page<{{name.pascalCase()}}View> {
  const {{name.pascalCase()}}Page({Key? key}) : super(key: key);

  @override
  List<BlocProvider> get providers => [
    // TODO: Put dependencies here or remove if no dependencies
  ];

   @override
  List<BlocListener> get listeners => [
    // TODO: Put listeners here or remove if no listeners
  ];

  @override
  {{name.pascalCase()}}View get view => const {{name.pascalCase()}}View();
}

class {{name.pascalCase()}}View extends View {
  const {{name.pascalCase()}}View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement view here
    throw UnimplementedError();
  }
}
