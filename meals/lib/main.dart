import 'package:flutter/material.dart';
import 'package:meals/screens/categories_screen.dart';
import 'package:meals/screens/categories_meals_screen.dart';
import 'utils/app_routes.dart';

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
      // home: const CategoriesScreen(),
      routes: {
        AppRoutes.HOME: (ctx) =>
            const CategoriesScreen(), // Substitui a propriedade 'home' comantada na linha acima
        AppRoutes.CATEGORIES_MEALS: (ctx) =>
            const CategoriesMealsScreen(), // configuração de Rota para a tela CategoriesMealsScreen
      },
    );
  }
}
