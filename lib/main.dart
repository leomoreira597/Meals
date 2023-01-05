import 'package:flutter/material.dart';
import 'package:meals/screens/categories_meals_screen.dart';
import 'package:meals/screens/categorys_screens.dart';
import 'package:meals/utils/app_routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return MaterialApp(
      title: 'DeliMeals',
      theme: theme.copyWith(
          primaryColor: Colors.pink,
          canvasColor: Color.fromRGBO(255, 254, 229, 1),
          colorScheme: theme.colorScheme.copyWith(
            secondary: Colors.amber,
          ),
          textTheme: const TextTheme(
            headline6: TextStyle(
              fontSize: 20,
              fontFamily: 'RobotoCondensed',
            ),
          )),
      routes: {
        AppRoutes.HOME: (ctx) => CategoriesScreens(),
        AppRoutes.CATEGORIES_MEALS: (ctx) => CategoriesMealsScreen(),
      },
    );
  }
}
