import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vini_verso/modules/event/event_module.dart';
import 'package:vini_verso/modules/event/presentation/cubit/event_list/event_list_cubit.dart';
import 'package:vini_verso/modules/event/presentation/widgets/templates/event_list_template.dart';
import 'package:vini_verso/shared/presentation/page_state.dart';
import 'package:vini_verso/shared/presentation/show_error.dart';

class EventListPage extends StatefulWidget {
  static const routeName = '/event-list';
  static const routePath = '${EventModule.moduleName}$routeName';

  @override
  State<EventListPage> createState() => _EventListPageState();
}

class _EventListPageState extends ModularCubitState<EventListPage, EventListCubit> {
  @override
  void initState() {
    super.initState();
    cubit.onInit();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<EventListCubit, EventListState>(
        listener: (context, state) => showError('error'),
        bloc: cubit,
        builder: (context, state) {
          return EventListTemplate(
            eventList: cubit.eventListMock,
            onTap: cubit.onEventBannerTap,
          );
        });
  }
}
