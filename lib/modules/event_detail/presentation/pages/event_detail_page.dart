import 'package:flutter/material.dart';
import 'package:vini_verso/modules/event_detail/presentation/cubit/event_detail_cubit.dart';
import 'package:vini_verso/shared/presentation/page_state.dart';

class EventDetailPage extends StatefulWidget {
  @override
  _EventDetailPageState createState() => _EventDetailPageState();
}

class _EventDetailPageState
    extends ModularCubitState<EventDetailPage, EventDetailCubit> {
  @override
  void initState() {
    super.initState();
    cubit.onInit();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(child: Text('Evento')),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Image.network(
                    'https://psytrancebr.com/wp-content/uploads/2020/03/psy-fly-mundo-dos-sonhos.jpg'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
