import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vini_verso/modules/event_detail/domain/entities/event.dart';
import 'package:vini_verso/modules/event_detail/event_detail_strings.dart';
import 'package:vini_verso/modules/event_detail/presentation/cubit/event_detail_cubit.dart';
import 'package:vini_verso/modules/event_detail/presentation/widgets/templates/event_detail_template_widget.dart';
import 'package:vini_verso/shared/presentation/app_colors.dart';
import 'package:vini_verso/shared/presentation/page_state.dart';
import 'package:vini_verso/shared/presentation/status.dart';

class EventDetailPage extends StatefulWidget {
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
        backgroundColor: Colors.black,
        title: Center(
          child: Text(EventDetailStrings.eventTitle),
        ),
      ),
      body: BlocConsumer<EventDetailCubit, EventDetailState>(
        bloc: cubit,
        listener: (context, state) {
          // TODO: Check error state
        },
        builder: (context, state) {
          if (state.status == Status.loading) {
            return Center(
              child: CircularProgressIndicator(
                color: Colors.black,
              ),
            );
          } else if (state.status == Status.success && state.event != null) {
            final Event event = state.event!;
            return EventDetailTemplateWidget(event: event);
          } else {
            return const SizedBox.shrink();
          }
        },
      ),
    );
  }
}
