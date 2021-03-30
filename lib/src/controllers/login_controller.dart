import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class LoginController {
  final TextEditingController employeeId;
  final firestore = FirebaseFirestore.instance;

  LoginController({this.employeeId});

  login() async {
    final status = await firestore
        .collection('employees')
        .doc(employeeId.text)
        .get()
        .then((DocumentSnapshot snapshot) {
      if (snapshot.data() != null) {
        return true;
      }
    }).catchError((onError) {
      return false;
    }).onError((error, stackTrace) {
      return false;
    });
    return status;
  }
}
