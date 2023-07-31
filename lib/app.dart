import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'widget/skin_recogniser.dart';

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
      [
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ],
    );
    return MaterialApp(
      title: 'derm.ai',
      theme: ThemeData.light(),
      home: const SkinRecogniser(),
      debugShowCheckedModeBanner: false,
    );
  }
}
