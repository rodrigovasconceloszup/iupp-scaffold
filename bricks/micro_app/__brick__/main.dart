import 'package:flutter/material.dart';
import 'package:iupp_core/core.dart';

import '{{microAppNameLowerCase}}_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initCore();
  runApp({{microAppName}}App());
}
