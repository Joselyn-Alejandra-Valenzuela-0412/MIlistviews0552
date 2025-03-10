import 'package:flutter/material.dart';

void main() {
  runApp(MiListview());
}

class MiListview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Joselyn Alejandra Valenzuela Mat:21308051280552',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'LISTVIEWJoselyn Alejandra Valenzuela Mat:21308051280552',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.pink,
      ),
      body: ListView(
        children: [
          _buildListItem(Icons.wb_sunny, Colors.orange, 'Sol'),
          _buildListItem(Icons.nightlight_round, Colors.blue, 'Luna'),
          _buildListItem(Icons.star, Colors.yellow, 'Estrella'),
          _buildListItem(Icons.ac_unit, Colors.green, 'copo de nieve'),
          _buildListItem(Icons.access_alarm, Colors.red, 'reloj'),
        ],
      ),
    );
  }

  Widget _buildListItem(IconData icon, Color color, String text) {
    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text),
      trailing: IconButton(
        icon: Icon(Icons.arrow_forward_ios, color: Colors.grey),
        onPressed: () {
          // No hacer nada, solo permitir que la flecha sea clickeable
        },
      ),
    );
  }
}