import 'package:flutter_modular/flutter_modular.dart';
import 'package:vini_verso/modules/event_detail/data/datasources/event_detail_remote_datasource.dart';
import 'package:vini_verso/modules/event_detail/data/repositories/event_detail_repository_impl.dart';
import 'package:vini_verso/modules/event_detail/domain/usecases/get_event_detail_usecase.dart';
import 'package:vini_verso/modules/event_detail/presentation/cubit/event_detail_cubit.dart';
import 'package:vini_verso/modules/event_detail/presentation/pages/event_detail_page.dart';

class EventDetailModule extends Module {
  @override
  List<Bind> get binds => [
        Bind((i) => EventDetailRemoteDatasourceImpl()),
        Bind((i) => EventDetailRepositoryImpl(datasource: i())),
        Bind((i) => GetEventDetailUsecase(repository: i())),
        Bind((i) => EventDetailCubit(
            getEventDetailUsecase: i(), id: '1')), // TODO: Change This
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(Modular.initialRoute, child: (_, args) => EventDetailPage()),
      ];
}
