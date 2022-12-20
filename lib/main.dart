import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:imagem_testes/constants/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Uint8List byteImage = const Base64Decoder().convert(Constants.IMG2);
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Visibility(
        visible: Constants.IMG2.isNotEmpty,
        child: Center(
          child: Image.memory(byteImage),
        ),
      ),
    );
  }
}
