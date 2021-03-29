import 'package:flutter/material.dart';

class EventView extends StatefulWidget {
  static const routeName = '/event';
  static const pageName = 'Evento';

  @override
  State<StatefulWidget> createState() {
    return EventViewState();
  }
}

class EventViewState extends State<StatefulWidget> {
  var eventName = "Churrasco da Hammet";
  var managementName = "João Lemos";
  bool isManagement = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(EventView.pageName),
        actions: isManagement
            ? [
                IconButton(
                  icon: Icon(Icons.mode_outlined),
                  onPressed: () => {},
                ),
                IconButton(
                  icon: Icon(Icons.delete_outline_outlined),
                  onPressed: () => {},
                ),
              ]
            : [],
      ),
      body: Container(
        child: Column(
          children: [
            RichText(
              text: TextSpan(
                text: eventName,
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            RichText(
              text: TextSpan(
                text: 'Organizador: ',
                style: Theme.of(context).textTheme.bodyText2,
                children: <TextSpan>[
                  TextSpan(
                    text: managementName,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
