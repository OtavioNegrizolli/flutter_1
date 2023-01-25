import 'dart:io';

import 'package:contacts/android/android.app.dart';
import 'package:contacts/ios/ios.app.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(Platform.isIOS ? const AndroidApp() : const IOSApp());
}
