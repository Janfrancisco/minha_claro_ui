import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rive/rive.dart';
import 'package:try_minha_claro/splash2.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  RiveAnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = SimpleAnimation('Animation 1');
    _controller.isActiveChanged.addListener(() {
      if (!_controller.isActive) {
        Future.delayed(Duration(seconds: 1), () {
          // Chama a próxima tela, sem o botão Voltar
          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) => HomePage2()),
              (Route<dynamic> route) => false);
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );

    return Scaffold(
      backgroundColor: Color(0xffe2252e),
      body: Center(
        child: Container(
          height: 100,
          child: RiveAnimation.asset(
            'animation/new_file.riv',
            controllers: [_controller],
          ),
        ),
      ),
    );
  }
}
