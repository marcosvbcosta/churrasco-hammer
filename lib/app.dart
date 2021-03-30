import 'package:churrasco_hammer/views/event.dart';
import 'package:flutter/material.dart';

import 'package:churrasco_hammer/views/login_view.dart';
import 'package:churrasco_hammer/views/events_view.dart';

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
      onGenerateRoute: Router.generateRoute,
    );
  }
}

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case LoginView.routeName:
        return _slide(LoginView());
      case EventsView.routeName:
        return _slide(EventsView());
      case EventView.routeName:
        return _slide(EventView(data: args));
      default:
        return MaterialPageRoute(builder: (_) {
          return Center(
            child: Text('Error!'),
          );
        });
    }
  }
}

_slide(Widget view) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => view,
    transitionDuration: Duration(milliseconds: 1000),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(1, 0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
      var curvedAnimation = CurvedAnimation(
        parent: animation,
        curve: curve,
      );

      return SlideTransition(
        position: tween.animate(curvedAnimation),
        child: child,
      );
    },
  );
}
