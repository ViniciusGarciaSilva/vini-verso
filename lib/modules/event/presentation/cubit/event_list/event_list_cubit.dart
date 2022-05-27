import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:vini_verso/modules/event/domain/entities/event_banner.dart';
import 'package:vini_verso/modules/event/domain/usecases/get_event_list_usecase.dart';
import 'package:vini_verso/modules/event/event_navigator.dart';
import 'package:vini_verso/shared/domain/errors/failure.dart';
import 'package:vini_verso/shared/domain/usecase/usecase.dart';
import 'package:vini_verso/shared/presentation/status.dart';

part 'event_list_state.dart';

class EventListCubit extends Cubit<EventListState> {
  final GetEventListUsecase getEventListUsecase;
  final EventNavigator eventNavigator;

  EventListCubit({
    required this.getEventListUsecase,
    required this.eventNavigator,
  }) : super(EventListState());

  List<EventBanner> eventListMock = [];

  // Init
  Future<void> onInit() async {
    await _getEventList();
  }

  // Requests
  Future<void> _getEventList() async {
    final result = await getEventListUsecase(NoParams());
    result.fold(
      (failure) {},
      (eventList) {
        eventListMock = eventList;
        emit(state.copyWith(eventListStatus: Status.success));
      },
    );
  }

  // Actions
  Future<void> onEventBannerTap(int id) async {
    eventNavigator.openEventDetail(id);
  }
}
