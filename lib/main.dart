import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:try_minha_claro/splash_screen.dart';

void main() {
  //manter a tela no modo retrato permanentemente
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  ).then((val) {
    runApp(MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Dinot'),
    ));
  });
}
