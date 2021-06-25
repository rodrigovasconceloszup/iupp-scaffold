import 'package:iupp_components/iupp_components.dart';
import 'package:iupp_core/core.dart';

class {{microAppName}}App extends MicroApp {
  @override
  String get microAppName => '{{microAppName}}';

  @override
  String get contextPath => '';

  @override
  String get initialRoute => 'PUT YOUR INITIAL ROUTE HERE';

  @override
  Map<String, WidgetBuilderArgs> get routes => {};

  @override
  FutureOr<void> registerDependencies() {
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
  Widget build(BuildContext context) {
    registerDependencies();
    return IuppLoaderOverlay(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: microAppName,
        theme: iuppTheme,
        navigatorKey: NavigatorService.navigatorKey,
        onGenerateRoute: generateRoute,
        initialRoute: initialRoute,
      ),
    );
  }
}
