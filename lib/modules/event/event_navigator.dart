import 'package:flutter_modular/flutter_modular.dart';
import 'package:vini_verso/modules/event/presentation/pages/event_detail_page.dart';

class EventNavigator {
  void openEventDetail(int id) {
    Modular.to.pushNamed(
      EventDetailPage.routeName,
      arguments: id,
    );
  }
}
