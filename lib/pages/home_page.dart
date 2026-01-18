import 'package:flutter/material.dart';
import 'package:geofrance/components/app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      // body: Container(),
    );
  }
}
