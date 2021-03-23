import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Color(0xFF3CB371),
      ),
      title: "App",
      home: Tela1(),
    ));

class Tela1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("Conversor"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Converter"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Tela2(100.5, 120.5)),
            );
          },
        ),
      ),
    ));
  }
}

class Tela2 extends StatelessWidget {
  final double _resultado;
  final double _resultado2;

  Tela2(this._resultado, this._resultado2);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("Conversor de moedas"),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [Text("teste de texto")],
          ),
        ),
      ),
    );
  }
}
