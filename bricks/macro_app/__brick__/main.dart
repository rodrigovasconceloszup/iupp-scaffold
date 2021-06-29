import 'package:flutter/widgets.dart';
import 'package:iupp_core/core.dart';
import 'package:iupp_core/init_core.dart';

import 'package:url_strategy/url_strategy.dart';
import 'main/{{macroAppNameSnakeCase}}_widget.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initCore();
  setPathUrlStrategy();
  runApp({{macroAppNamePascalCase}}App());
}
