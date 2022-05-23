import 'package:flutter_modular/flutter_modular.dart';
import 'package:vini_verso/modules/event/data/datasources/event_remote_datasource.dart';
import 'package:vini_verso/modules/event/data/repositories/event_repository_impl.dart';
import 'package:vini_verso/modules/event/domain/usecases/get_event_detail_usecase.dart';
import 'package:vini_verso/modules/event/presentation/cubit/event_detail/event_detail_cubit.dart';
import 'package:vini_verso/modules/event/presentation/cubit/event_list/event_list_cubit.dart';
import 'package:vini_verso/modules/event/presentation/pages/event_detail_page.dart';
import 'package:vini_verso/modules/event/presentation/pages/event_list_page.dart';
import 'package:vini_verso/shared/data/not_logged_dio.dart';

class EventModule extends Module {
  static const moduleName = '/event';

  @override
  List<Bind> get binds => [
        // Datasources
        Bind((i) => EventRemoteDatasourceImpl(
              appNetwork: i(),
              dio: i<NotLoggedDio>(),
            )),

        // Repositories
        Bind((i) => EventRepositoryImpl(datasource: i())),

        // Usecases
        Bind((i) => GetEventDetailUsecase(repository: i())),

        // Cubits
        Bind((i) => EventListCubit()),
        Bind((i) => EventDetailCubit(
              getEventDetailUsecase: i(),
              id: '1',
            )), // TODO: Change This
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(Modular.initialRoute, child: (_, args) => EventListPage()),
        ChildRoute(EventDetailPage.routeName, child: (_, args) => EventDetailPage()),
      ];
}
