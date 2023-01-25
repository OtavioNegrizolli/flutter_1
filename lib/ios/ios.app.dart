import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IOSApp extends StatelessWidget {
  const IOSApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      title: 'Flutter Demo',
      theme: CupertinoThemeData(
        primaryColor: Colors.blue,
      ),
      home: Text('Flutter Demo Home Page'),
    );
  }
}
