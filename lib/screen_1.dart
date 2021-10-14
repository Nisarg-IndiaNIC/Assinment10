import 'package:flutter/material.dart';
import 'package:flutter_application_1/common_appbar.dart';

class Screen1 extends StatefulWidget {
  const Screen1({ Key? key }) : super(key: key);

  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: BaseAppBar(title: Text('Screen1'), backgroundColor: Colors.green ,),
    );
  }
}