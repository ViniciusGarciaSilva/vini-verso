import 'package:vini_verso/mocks/requests/event_detail/event_details_request.dart';
import 'package:vini_verso/shared/data/app_network.dart';
import 'package:vini_verso/shared/data/mock_request.dart';

class MockServer {
  final AppNetwork appNetwork;

  MockServer({
    required this.appNetwork,
  });

  Map<String, MockRequest> get requests => {
        appNetwork.eventDetail: EventDetailRequest(),
      };
}
