import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class BemVindo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    //retornoApi();

    return Scaffold(
      appBar: AppBar(
        title: Text("Seja bem vindo"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text("Voltar!"),
        ),
      ),
    );
  }

}
//void retornoApi() async{
//  http.Response reponse = await http.get(req);
//  print(json.decode(reponse.body));
//}
