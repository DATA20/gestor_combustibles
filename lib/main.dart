
import 'package:flutter/material.dart';
import 'package:gestor_combustible/helpers/routes.dart';
import 'package:gestor_combustible/views/form/login.dart';

void main() {
  runApp(const MyFuelApp());
}

class MyFuelApp extends StatelessWidget {
  const MyFuelApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: routes,
      initialRoute: LoginPage.routName,
      //title: 'Gestión de Combustible',
      //home: MainMenu(userName: 'Pedro picapiedra', carModel: 'Mazda'),
    );
  }
}







