import 'package:flutter_modular/flutter_modular.dart';
import 'package:vini_verso/modules/event/event_module.dart';
import 'package:vini_verso/shared/configs/environments.dart';
import 'package:vini_verso/shared/data/app_network.dart';
import 'package:vini_verso/shared/data/mock_interceptor.dart';
import 'package:vini_verso/shared/data/mock_server.dart';
import 'package:vini_verso/shared/data/not_logged_dio.dart';
import 'package:vini_verso/shared/data/not_logged_interceptor.dart';

class AppModule extends Module {
  final Environment environment;

  AppModule({
    required this.environment,
  });

  @override
  List<Bind> get binds => [
        // Configurations
        Bind((i) => environment),
        Bind((i) => AppNetwork()),
        if (environment is DevEnvironment) ...[
          Bind((i) => MockServer(
                appNetwork: i(),
              )),
          Bind((i) => MockInterceptor(
                mockServer: i(),
              )),
          Bind((i) => NotLoggedDio(
                environment: environment,
                enviromentInterceptor: i<MockInterceptor>(),
              )),
        ] else ...[
          Bind((i) => NotLoggedInterceptor()),
          Bind((i) => NotLoggedDio(
                environment: environment,
                enviromentInterceptor: i<NotLoggedInterceptor>(),
              )),
        ],
      ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: EventModule()),
  ];
}
