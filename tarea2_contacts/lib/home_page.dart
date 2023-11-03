import 'package:flutter/material.dart';
import 'widgets_Principales.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.indigo,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Widgets().avatar,
              Widgets().nombreContacto,
              Widgets().barra,
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Widgets().infoContacto,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
