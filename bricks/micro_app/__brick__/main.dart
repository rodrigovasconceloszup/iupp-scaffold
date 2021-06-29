import 'package:flutter/material.dart';
import 'package:iupp_core/core.dart';

import '{{microAppNameSnakeCase}}_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initCore();
  runApp({{microAppNamePascalCase}}App());
}
