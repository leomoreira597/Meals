import 'package:flutter/material.dart';
import 'package:meals/screens/categories_meals_screen.dart';
import 'package:meals/screens/meal_detail_screen.dart';
import 'package:meals/screens/settings_screen.dart';
import 'package:meals/screens/tabs_screen.dart';
import 'package:meals/utils/app_routes.dart';

import 'data/dummy_data.dart';
import 'models/meals.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Meal> _avaliableMeals = DUMMY_MEALS;
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        primaryColor: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: const Color.fromRGBO(255, 254, 229, 1),
        textTheme: const TextTheme(
        headline6: TextStyle(
                fontSize: 20,
                fontFamily: 'Raleway',
          ),
        ),
      ),
      // theme: theme.copyWith(
      //     primaryColor: Colors.pink,
      //     canvasColor: const Color.fromRGBO(255, 254, 229, 1),
      //     colorScheme: theme.colorScheme.copyWith(
      //       secondary: Colors.amber,
      //     ),
      //     textTheme: const TextTheme(
      //       headline6: TextStyle(
      //         fontSize: 20,
      //         fontFamily: 'Raleway',
      //       ),
      //     )),
      routes: {
        AppRoutes.HOME: (ctx) => const TabScreen(),
        AppRoutes.CATEGORIES_MEALS: (ctx) => CategoriesMealsScreen(_avaliableMeals),
        AppRoutes.MEAL_DETAIL: (ctx) => const MealDetailScreen(),
        AppRoutes.SETTINGS: (ctx) => const SettingsScreens(),
      },
    );
  }
}
