import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vini_verso/modules/event/domain/entities/event.dart';
import 'package:vini_verso/modules/event/event_module.dart';
import 'package:vini_verso/modules/event/presentation/cubit/event_detail/event_detail_cubit.dart';
import 'package:vini_verso/modules/event/presentation/widgets/templates/event_detail_template.dart';
import 'package:vini_verso/shared/presentation/app_colors.dart';
import 'package:vini_verso/shared/presentation/page_state.dart';
import 'package:vini_verso/shared/presentation/show_error.dart';
import 'package:vini_verso/shared/presentation/status.dart';

class EventDetailPage extends StatefulWidget {
  static const routeName = '/event-details';
  static const routePath = '${EventModule.moduleName}$routeName';

  @override
  _EventDetailPageState createState() => _EventDetailPageState();
}

class _EventDetailPageState extends ModularCubitState<EventDetailPage, EventDetailCubit> {
  @override
  void initState() {
    super.initState();
    cubit.onInit();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.appBar,
        toolbarHeight: 0,
      ),
      body: BlocConsumer<EventDetailCubit, EventDetailState>(
        bloc: cubit,
        listener: (context, state) {
          if (state.failure != null) {
            showError(state.failure!.message);
          }
        },
        listenWhen: (previous, current) => previous.failure != current.failure,
        builder: (context, state) {
          if (state.status == Status.loading) {
            return Center(
              child: CircularProgressIndicator(
                color: Colors.black,
              ),
            );
          } else if (state.status == Status.success && state.event != null) {
            final Event event = state.event!;
            return EventDetailTemplate(event: event);
          } else {
            return const SizedBox.shrink();
          }
        },
      ),
    );
  }
}
