import 'package:flutter/material.dart';

import 'package:churrasco_hummer/views/event.dart';
import 'package:churrasco_hummer/data.dart';

class EventsView extends StatefulWidget {
  static const routeName = '/events';
  static const pageName = 'Eventos';

  @override
  State<StatefulWidget> createState() {
    return EventsViewState();
  }
}

class EventsViewState extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(EventsView.pageName)),
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: Data.events.length,
        itemBuilder: _listCompanyBuilder,
      ),
    );
  }
}

Widget _listCompanyBuilder(BuildContext context, int index) {
  var eventName = Data.events[index]['name'];
  //buscar gerente
  var managementName = Data.employer1['name'];
  var eventData = Data.events[index]['date'];
  bool control = false;

  return Card(
    child: Container(
      padding: EdgeInsets.only(top: 4.0, bottom: 4.0),
      child: Flex(
        direction: Axis.horizontal,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Icon(
              Icons.event_outlined,
              color: Theme.of(context).primaryColor,
              size: 28,
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    text: eventName,
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ),
                RichText(
                  text: TextSpan(
                    text: 'Data: ',
                    style: Theme.of(context).textTheme.subtitle2,
                    children: <TextSpan>[
                      TextSpan(
                        text: eventData,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    text: 'Organizador: ',
                    style: Theme.of(context).textTheme.subtitle2,
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
          Text(
            control ? "Vou" : "Não Vou",
            style: TextStyle(
              color: control ? Colors.green : Colors.red,
              fontSize: 16,
            ),
          ),
          Icon(
            control ? Icons.check : Icons.close,
            size: 20,
            color: control ? Colors.green : Colors.red,
          ),
          IconButton(
            icon: Icon(
              Icons.navigate_next_outlined,
              color: Theme.of(context).primaryColor,
            ),
            iconSize: 28,
            onPressed: () => {
              Navigator.of(context).pushNamed(EventView.routeName),
            },
          ),
        ],
      ),
    ),
  );
}
