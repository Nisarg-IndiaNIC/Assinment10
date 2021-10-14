import 'package:flutter/material.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Color? backgroundColor;
  final Text title;
  const BaseAppBar({Key? key, required this.title,  this.backgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title,
      backgroundColor: backgroundColor ?? Colors.amber,
      elevation: 0,
    );
  }

  @override
  Size get preferredSize =>  const Size.fromHeight(150);
}