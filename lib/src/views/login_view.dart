import 'package:churrasco_hammer/src/controllers/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:churrasco_hammer/src/views/events_view.dart';

class LoginView extends StatelessWidget {
  static const routeName = '/';
  static const pageName = 'Login';

  final TextEditingController id = TextEditingController();

  LoginController loginController;

  LoginView() {
    loginController = LoginController(employeeId: id);
  }

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
              onPressed: () {
                if (loginController.login()) {
                  Navigator.pushReplacementNamed(context, EventsView.routeName);
                } else {
                  showDialog(
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
              },
            ),
          ],
        ),
      ),
    );
  }
}
