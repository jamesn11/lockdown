import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
import 'package:wseetec/pages/login_page.dart';

const req = "https://api-seetec.herokuapp.com/listarcursos";

void main () {
  // retornoApi();
  runApp(MaterialApp(
    home:Home(),
  ));
}


//void retornoApi() async{
//   http.Response reponse = await http.get(req);
//   print(json.decode(reponse.body));
//}
