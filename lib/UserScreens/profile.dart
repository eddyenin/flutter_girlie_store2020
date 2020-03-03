import 'package:flutter/material.dart';

class GirlieProfile extends StatefulWidget {
  @override
  _GirlieProfileState createState() => _GirlieProfileState();
}

class _GirlieProfileState extends State<GirlieProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Settings'),
      ),
    );
  }
}
