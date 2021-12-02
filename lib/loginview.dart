import 'package:flutter/material.dart';
import 'package:startup_namer/randomWords.dart';

class LoginView extends StatelessWidget {
  static final String path = "lib/loginview.dart";

  Widget _buildPageContent(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(20.0),
        color: Colors.grey.shade800,
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                SizedBox(
                  height: 50,
                ),
                Container(
                  width: 200,
                ),
                // Image.asset(
                //   'lib/img/imgFeira.png',
                //   width: 150,
                // ),
                SizedBox(
                  height: 50,
                ),
                ListTile(
                    title: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      hintText: "Endereço de E-mail",
                      hintStyle: TextStyle(color: Colors.white70),
                      border: InputBorder.none,
                      icon: Icon(Icons.email, color: Colors.white30)),
                )),
                Divider(
                  color: Colors.cyan,
                ),
                ListTile(
                  title: TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        hintText: "Senha:",
                        hintStyle: TextStyle(color: Colors.white70),
                        border: InputBorder.none,
                        icon: Icon(
                          Icons.lock,
                          color: Colors.white30,
                        )),
                  ),
                ),
                Divider(
                  color: Colors.cyan,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RandomWords()),
                          );
                        },
                        // onPressed: () async {},
                        color: Colors.blue,
                        child: Text(
                          'Login',
                          style:
                              TextStyle(color: Colors.white70, fontSize: 16.0),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  'Esqueceu sua senha?',
                  style: TextStyle(color: Colors.lightGreen),
                )
              ],
            ),
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildPageContent(context),
    );
  }
}
