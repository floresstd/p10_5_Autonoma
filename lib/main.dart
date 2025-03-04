import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff111111),
        elevation: 0,
        title: Text(
          "Jesús Daniel Flores Rodríguez", // Texto en el AppBar
          style: TextStyle(
            color: Color(0xffcfcfcf), // Color del texto
            fontSize: 22, // Tamaño del texto
            fontWeight: FontWeight.bold, // Negrita
          ),
        ),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                color: Colors.blue,
                height: MediaQuery.of(context).size.height * 0.55,
                width: double.infinity,
              ),
              Expanded(
                child: Container(
                  color: Color(0xffd92f2f),
                  width: double.infinity,
                ),
              ),
            ],
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.47,
            left: MediaQuery.of(context).size.width * 0.1,
            child: Container(
              height: 150,
              width: MediaQuery.of(context).size.width * 0.8,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x6d000000),
                    blurRadius: 5,
                    spreadRadius: 2,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
