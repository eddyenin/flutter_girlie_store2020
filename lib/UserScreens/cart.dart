import 'package:flutter/material.dart';

class GirlieCart extends StatefulWidget {
  @override
  _GirlieCartState createState() => _GirlieCartState();
}

class _GirlieCartState extends State<GirlieCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
    );
  }
}
