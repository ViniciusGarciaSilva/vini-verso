part of 'event_list_cubit.dart';

class EventListState extends Equatable {
  final Status eventListStatus;
  final Failure? failure;

  EventListState({
    this.eventListStatus = Status.initial,
    this.failure,
  });

  @override
  List<Object?> get props => [
        eventListStatus,
        failure,
      ];

  EventListState copyWith({
    Status? eventListStatus,
    Failure? failure,
  }) {
    return EventListState(
      eventListStatus: eventListStatus ?? this.eventListStatus,
      failure: failure ?? this.failure,
    );
  }
}
