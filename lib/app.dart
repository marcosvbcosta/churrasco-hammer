import 'package:churrasco_hummer/views/event.dart';
import 'package:flutter/material.dart';

import 'package:churrasco_hummer/views/login_view.dart';
import 'package:churrasco_hummer/views/events_view.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.grey[200],
        textTheme: TextTheme(
          subtitle1: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).primaryColor),
          subtitle2: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.normal,
              color: Theme.of(context).primaryColor),
        ),
      ),
      initialRoute: LoginView.routeName,
      routes: {
        LoginView.routeName: (context) => LoginView(),
        EventsView.routeName: (context) => EventsView(),
        EventView.routeName: (context) => EventView(),
      },
    );
  }
}
