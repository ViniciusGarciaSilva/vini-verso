import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:vini_verso/shared/domain/errors/failure.dart';
import 'package:vini_verso/shared/presentation/status.dart';

part 'event_list_state.dart';

class EventListCubit extends Cubit<EventListState> {
  EventListCubit() : super(EventListState());

  // Init
  Future<void> onInit() async {
    await _getEventList();
  }

  // Requests
  Future<void> _getEventList() async {}

  // Actions
}
