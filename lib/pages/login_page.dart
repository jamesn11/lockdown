import 'package:flutter/material.dart';
import 'package:wseetec/pages/sucesso_page.dart';

import 'erro_page.dart';

class Home extends StatelessWidget  {

  TextEditingController login = TextEditingController();
  TextEditingController senha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login"),
          centerTitle: true,
        ) ,
        body: SingleChildScrollView(
            padding: EdgeInsets.fromLTRB(10.0, 0, 0, 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Icon(Icons.person_outline, size: 120.0, color: Colors.blue),
                TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      labelText: "Usuario",
                      labelStyle: TextStyle(color: Colors.green, fontSize: 24.0)),
                  controller: login,),
                TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        labelText: "Senha",
                        labelStyle: TextStyle(color: Colors.green, fontSize: 24.0,)),
                    textAlign: TextAlign.left ,
                    obscureText: true,
                    controller : senha),
                Padding(
                  padding: EdgeInsets.only(top: 10.0, bottom: 10.00),
                  child: Container(
                    height: 49,
                    child: RaisedButton(
                      onPressed: () {
                        if (login.text == "admin" && senha.text == "1234") {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) =>BemVindo()));
                        } else {
                          Navigator.push(context, MaterialPageRoute(builder:(context) => ErroLogin()));
                        }
                      },
                      // {imprimir(login.text, senha.text);
                      child:
                      Text("Logar",
                          style: TextStyle(color: Colors.white, fontSize: 25.0))
                      ,
                      color: Colors.blue,

                    ), // RaisedButton
                  ), // Container
                ),
                Text(
                  "Esqueci a senha",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.blue, fontSize: 25.0),
                )
              ],
            )
        )
    );
  }

}