import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});
  static const primaryColor = Color(0xFF67bed9);

  @override
  Size get preferredSize => const Size.fromHeight(30);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('GeoFrance'),
      centerTitle: true,
      backgroundColor: primaryColor,
    );
  }
}
