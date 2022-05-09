import 'package:flutter_modular/flutter_modular.dart';
import 'package:vini_verso/modules/event_detail_module.dart';
import 'package:vini_verso/shared/configs/environments.dart';
import 'package:vini_verso/shared/data/app_network.dart';
import 'package:vini_verso/shared/data/base_dio.dart';
import 'package:vini_verso/shared/data/mock_interceptor.dart';
import 'package:vini_verso/shared/data/mock_server.dart';

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
        if (environment is DevEnvironment)
          Bind((i) => MockServer(
                appNetwork: i(),
              )),
        if (environment is DevEnvironment)
          Bind((i) => MockInterceptor(
                mockServer: i(),
              )),
        if (environment is DevEnvironment)
          Bind((i) => BaseDio(
                enviroment: environment,
                mockInterceptor: i(),
              ))
        else
          Bind((i) => BaseDio(
                enviroment: environment,
              )),
      ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: EventDetailModule()),
  ];
}
