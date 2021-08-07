import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffafafa),
      appBar: AppBar(
        backgroundColor: Color(0xfffafafa),
        elevation: 0,
        //Alterandoo a cor do botão voltar

        iconTheme: IconThemeData(
          color: Color(0xffe2252e),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 24, left: 18, right: 16),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Olá! Que bom que está de volta',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 60,
                ),
                Container(
                  width: 370,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Continuar como Janfrancisco',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  '***.***.363-76',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                Divider(
                  thickness: 1,
                  height: 50,
                  color: Colors.grey[400],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 370,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Entrar com outra conta',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                      )
                    ],
                  ),
                ),
                Divider(
                  thickness: 1,
                  height: 30,
                  color: Colors.grey[400],
                ),
              ],
            ),
            Positioned(
                bottom: 10,
                height: 38,
                child: GestureDetector(
                  child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey[400]),
                        borderRadius: BorderRadius.circular(24),
                      ),
                      width: 376,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Acessar fatura sem login',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      )),
                ))
          ],
        ),
      ),
    );
  }
}
