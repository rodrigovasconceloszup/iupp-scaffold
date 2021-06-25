import 'package:flutter/material.dart';
import 'package:iupp_core/core.dart';
import 'package:iupp_components/iupp_components.dart';

class {{macroAppName}}App extends MainApp {
  {{macroAppName}}App() {
    super.registerRoutes();
    super.registerDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return IuppLoaderOverlay(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'iupp App',
        theme: iuppTheme,
        navigatorKey: NavigatorService.navigatorKey,
        onGenerateRoute: super.generateRoute,
        initialRoute: 'PUT YOUR INITIAL ROUTE HERE',
      ),
    );
  }

  @override
  Map<String, WidgetBuilderArgs> get baseRoutes => {};

  @override
  FutureOr<void> registerAppDependencies() {
    // state
    injector.put<AppState>(AppState());

    // general
    injector.put<Dio>(Dio());
    injector.put<Connectivity>(Connectivity());
    injector.put<DataConnectionChecker>(DataConnectionChecker());
    injector.put<HttpAdapter>(HttpAdapter(injector.get<Dio>()));
    injector.put<ConcreteRemoteDatasource>(makeConcreteRemoteDatasource());

    // repositories

    // usecases
  }

  @override
  List<MicroApp> get microApps => [];
}
