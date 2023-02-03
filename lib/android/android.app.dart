import 'package:flutter/material.dart';
import './views/home.view.dart';
// import './views/splash.view.dart';
import './styles.dart';

class AndroidApp extends StatelessWidget {
  const AndroidApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Contacts',
      theme: androidTheme(),
      home: const HomeView(),
    );
  }
}
