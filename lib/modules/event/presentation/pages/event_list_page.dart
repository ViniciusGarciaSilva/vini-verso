import 'package:flutter/material.dart';
import 'package:vini_verso/modules/event/event_module.dart';
import 'package:vini_verso/modules/event/presentation/cubit/event_list/event_list_cubit.dart';
import 'package:vini_verso/shared/presentation/page_state.dart';

class EventListPage extends StatefulWidget {
  static const routeName = '/event-list';
  static const routePath = '${EventModule.moduleName}$routeName';

  @override
  State<EventListPage> createState() => _EventListPageState();
}

class _EventListPageState extends ModularCubitState<EventListPage, EventListCubit> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
