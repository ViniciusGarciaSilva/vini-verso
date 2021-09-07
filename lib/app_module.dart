import 'package:flutter_modular/flutter_modular.dart';
import 'package:vini_verso/modules/event_detail_module.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind((i) => this), // TODO: undestand this
      ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: EventDetailModule()),
  ];
}
