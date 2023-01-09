import 'package:flutter/material.dart';
import 'package:meals/components/main_drawer.dart';
import 'package:meals/models/settings.dart';

class SettingsScreens extends StatefulWidget {
  const SettingsScreens({Key? key}) : super(key: key);

  @override
  State<SettingsScreens> createState() => _SettingsScreensState();
}

class _SettingsScreensState extends State<SettingsScreens> {
  var settings = Settings();

  Widget _createSwitch(
    String title,
    String subtitle,
    bool value,
    dynamic onChange,
  ) {
    return SwitchListTile(
        title: Text(title), value: value, onChanged: onChange);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Configurações'),
          backgroundColor: Theme.of(context).primaryColor,
        ),
        drawer: const MainDrawer(),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              child: Text(
                'Configurações',
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  _createSwitch(
                    'Sem Glutem',
                    'Só exibe refeições sem glutem',
                    settings.isGlutenFree,
                    (value) => setState(
                      () => settings.isGlutenFree = value,
                    ),
                  ),
                  _createSwitch(
                    'Sem Lactose',
                    'Só exibe refeições sem lactose',
                    settings.isLactoseFree,
                        (value) => setState(
                          () => settings.isLactoseFree = value,
                    ),
                  ),
                  _createSwitch(
                    'Vegana',
                    'Só exibe refeições Veganas',
                    settings.isVegan,
                        (value) => setState(
                          () => settings.isVegan = value,
                    ),
                  ),
                  _createSwitch(
                    'Vegetariano',
                    'Só exibe refeições Vegetarianas',
                    settings.isVegetarian,
                        (value) => setState(
                          () => settings.isVegetarian = value,
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
