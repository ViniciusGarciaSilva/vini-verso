part of 'event_detail_cubit.dart';

class EventDetailState extends Equatable {
  final Status status;
  final Event? event;

  EventDetailState({
    this.status = Status.initial,
    this.event,
  });

  @override
  List<Object?> get props => [status];

  EventDetailState copyWith({
    Status? status,
    Event? event,
  }) {
    return EventDetailState(
      status: status ?? this.status,
      event: event ?? this.event,
    );
  }
}
