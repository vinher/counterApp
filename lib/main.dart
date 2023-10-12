import 'package:flutter/material.dart';
import 'package:introduccion_app/presentation/screens/counter_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  //Todos los statelessWidgets Necesitan un metodo build
  
  //Es la inicializacion de la llave 
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      //Da las bases para comenzar a diseñar el widget Scaffold
      home:const  HomePage()
    );
  }
}
