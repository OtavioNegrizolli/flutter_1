import 'package:contacts/ios/style.dart';
import 'package:contacts/ios/views/splash.view.dart';
import 'package:flutter/cupertino.dart';

class IOSApp extends StatelessWidget {
  const IOSApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Contacts',
      debugShowCheckedModeBanner: false,
      theme: iosTheme(),
      home: const CupertinoPageScaffold(
        child: SplashView(),
      ),
    );
  }
}
