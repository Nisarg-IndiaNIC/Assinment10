import 'package:flutter/material.dart';
import 'package:flutter_application_1/common_appbar.dart';



class Screen2 extends StatefulWidget {
  const Screen2({ Key? key }) : super(key: key);

  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: BaseAppBar(title: Text('Screen 2'),),
    );
  }
}