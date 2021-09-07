import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vini_verso/modules/event_detail/domain/entities/event.dart';
import 'package:vini_verso/modules/event_detail/domain/usecases/get_event_detail_usecase.dart';
import 'package:vini_verso/shared/presentation/status.dart';

part 'event_detail_state.dart';

class EventDetailCubit extends Cubit<EventDetailState> {
  final GetEventDetailUsecase getEventDetailUsecase;
  final String id;

  EventDetailCubit({
    required this.getEventDetailUsecase,
    required this.id,
  }) : super(EventDetailState());

  void onInit() {
    loadEventDetail();
  }

  void loadEventDetail() async {
    emit(state.copyWith(status: Status.loading));
    final params = GetEventDetailUsecaseParams(id: id);
    final result = await getEventDetailUsecase(params);
    result.fold(
      (failure) {
        emit(state.copyWith(status: Status.failure));
      },
      (event) {
        emit(state.copyWith(status: Status.success, event: event));
      },
    );
  }
}
