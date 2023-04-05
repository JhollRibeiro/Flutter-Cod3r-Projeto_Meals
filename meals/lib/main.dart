import 'package:flutter/material.dart';
import 'package:meals/screens/categories_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData(
      canvasColor: const Color.fromRGBO(255, 254, 229, 1),
    );

    return MaterialApp(
      title: 'Vamos Cozinhar',
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: Colors.pink,
          secondary: Colors.amber,
        ),
        textTheme: ThemeData.light().textTheme.copyWith(
              titleLarge: const TextStyle(
                fontFamily: 'Raleway',
              ),
              titleMedium: const TextStyle(
                fontFamily: 'RobotoCondensed',
                color: Colors.black,
                fontSize: 20,
              ),
            ),
      ),
      home: const CategoriesScreen(),
    );
  }
}
