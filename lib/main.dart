import 'package:flutter/material.dart';

import 'Screen/Auth/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: const MaterialApp(
        title: 'Arity Info',
        debugShowCheckedModeBanner: false,
        home: LoginScreen(),
      ),
    );
  }
}
