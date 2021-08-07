import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:try_minha_claro/login_page.dart';

class HomePage2 extends StatelessWidget {
  const HomePage2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            ColorFiltered(
              colorFilter:
                  ColorFilter.mode(Colors.red[200], BlendMode.multiply),
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage("assets/background.jpg"),
                  fit: BoxFit.cover,
                )),
                child: null,
              ),
            ),
            Positioned(
              width: 370,
              top: 590,
              left: 12,
              child: Container(
                  child: Column(
                children: [
                  Text(
                    'Bem-vindo(a) ao Minha Claro residencial',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Aqui você pode acessar suas faturas, verificar o sinal de seus serviços Claro, configurar sua rede Wi-fi e muito mais.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Container(
                              height: 40,
                              child: ElevatedButton(
                                child: Text("Começar",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold)),
                                style: ButtonStyle(
                                  foregroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.white),
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Color(0xffe2252e)),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(24),
                                      side: BorderSide(color: Colors.red),
                                    ),
                                  ),
                                ),
                                onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginPage()),
                                ),
                              )))
                    ],
                  )
                ],
              )),
            )
          ],
        ),
      ),
    );
  }
}
