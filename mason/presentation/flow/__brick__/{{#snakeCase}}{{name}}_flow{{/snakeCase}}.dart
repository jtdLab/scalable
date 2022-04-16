import 'package:{{project_name}}/presentation/{{#android}}android{{/android}}{{#ios}}ios{{/ios}}/core/core.dart'; 

class {{name.pascalCase()}}Flow extends Flow {
  const {{name.pascalCase()}}Flow({Key? key}) : super(key: key);

   @override
  List<BlocProvider> get providers => [
    // TODO: Put dependencies here or remove if no dependencies
  ];

   @override
  List<BlocListener> get listeners => [
    // TODO: Put listeners here or remove if no listeners
  ];
}


