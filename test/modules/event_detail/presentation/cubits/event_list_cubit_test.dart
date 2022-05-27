import 'package:flutter_test/flutter_test.dart';
import 'package:vini_verso/modules/event/presentation/cubit/event_list/event_list_cubit.dart';
import 'package:vini_verso/shared/presentation/status.dart';

void main() {
  late EventListCubit eventListCubit;

  setUp(() {
    eventListCubit = EventListCubit();
  });

  group('When cubit is instantiated,', () {
    test('should have a [Status.initial] for [state.eventListStatus].', () {
      // Assert
      expect(eventListCubit.state.eventListStatus, Status.initial);
    });

    test('should have a [null] for [state.failure].', () {
      // Assert
      expect(eventListCubit.state.failure, null);
    });
  });

  group('When [onInit] is called,', () {
    test('', () {});
  });
}
