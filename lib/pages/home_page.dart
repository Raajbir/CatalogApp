import 'package:flutter/material.dart';
import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final int days = 30;
    final String name = 'Raajbir';
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'CATALOG APP',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Center(
        child: Container(
          child: Text('Welcome to $days days of Flutter by $name'),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
