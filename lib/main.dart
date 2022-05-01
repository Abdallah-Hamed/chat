import 'package:chat/screens/Login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const chat());
}

class chat extends StatelessWidget {
  const chat({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}
