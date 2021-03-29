import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:churrasco_hummer/views/events_view.dart';
import 'package:churrasco_hummer/data.dart';

class LoginView extends StatefulWidget {
  static const routeName = '/login';
  static const pageName = 'Login';

  @override
  State<StatefulWidget> createState() {
    return LoginViewState();
  }
}

class LoginViewState extends State<StatefulWidget> {
  final id = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(48.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: id,
              maxLength: 11,
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              decoration: InputDecoration(
                labelText: 'Código do Funcionário',
                border: OutlineInputBorder(),
                counterText: '',
              ),
            ),
            Container(height: 8.0),
            ElevatedButton(
              child: Text(
                'Entrar',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              onPressed: () => login(id.text, context),
            ),
          ],
        ),
      ),
    );
  }
}

login(id, BuildContext context) {
  var employers = ['11122233344'];
  for (var index in Data.employers) {
    employers.add(index['id']);
  }
  if (employers.contains(id)) {
    Navigator.of(context).pushReplacementNamed(EventsView.routeName);
  } else {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Erro'),
          content: Text('Código Inválido!'),
          actions: [
            TextButton(
              child: Text('Fechar'),
              onPressed: () => {
                Navigator.of(context).pop(),
              },
            ),
          ],
        );
      },
    );
  }
}
