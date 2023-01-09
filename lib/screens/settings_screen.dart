import 'package:flutter/material.dart';

class SettingsScreens extends StatelessWidget {
  const SettingsScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Configurações'),
      ),
      body: Center(
        child: Text('Configurações'),
      ),
    );
  }
}
