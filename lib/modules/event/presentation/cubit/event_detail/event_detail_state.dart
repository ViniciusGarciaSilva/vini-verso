part of 'event_detail_cubit.dart';

class EventDetailState extends Equatable {
  final Status status;
  final Event? event;
  final Failure? failure;

  EventDetailState({
    this.status = Status.initial,
    this.event,
    this.failure,
  });

  @override
  List<Object?> get props => [
        status,
        event,
        failure,
      ];

  EventDetailState copyWith({
    Status? status,
    Event? event,
    Failure? failure,
  }) {
    return EventDetailState(
      status: status ?? this.status,
      event: event ?? this.event,
      failure: failure ?? this.failure,
    );
  }
}
