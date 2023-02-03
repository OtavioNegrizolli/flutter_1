import 'package:flutter/cupertino.dart';

import 'package:contacts/ios/styles.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: primaryColor,
      // ignore: avoid_unnecessary_containers
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            SizedBox(width: double.infinity),
            Icon(
              CupertinoIcons.padlock,
              size: 72,
              color: accentColor,
            ),
            SizedBox(height: 20),
            Text(
              "Contatos",
              style: TextStyle(color: accentColor),
            )
          ],
        ),
      ),
    );
  }
}
