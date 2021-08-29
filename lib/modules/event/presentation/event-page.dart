import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EventPage extends StatefulWidget {
  @override
  _EventPageState createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(child: Text('Evento')),
      ),
      body: Stack(
        // alignment: Alignment.center,
        children: [
          SvgPicture.asset(
            'assets/images/psyfly_background.svg',
            // width: double.infinity,
            // fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
