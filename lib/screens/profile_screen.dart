import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Профиль'),
        backgroundColor: Colors.grey[850],
      ),
      body: Center(
        child: Text(
          'Профиль',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
    );
  }
}
