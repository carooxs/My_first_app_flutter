import 'package:flutter/material.dart';

class Pagina extends StatefulWidget {
  @override
  _PaginaState createState() => _PaginaState();
}

class _PaginaState extends State<Pagina> {
  int _calc = 1;

  void _clicarOnPress() {
    setState(() {
      _calc = _calc * 2;
    });
  }

  void _clicarLongPress() {
    setState(() {
      _calc = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('My First Flutter app'),
        centerTitle: true,
      ),
      body: GestureDetector(
        onTap: _clicarOnPress,
        onLongPress: _clicarLongPress,
        child: Center(
          child: Text(
            'calc $_calc',
            style: TextStyle(fontSize: 28),
          ),
        ),
      ),
    );
  }
}
