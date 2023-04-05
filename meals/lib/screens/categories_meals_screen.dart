import 'package:flutter/material.dart';
import 'package:meals/models/category.dart';

class CategoriesMealsScreen extends StatelessWidget {
  const CategoriesMealsScreen({super.key});

  @override
  Widget build(BuildContext context) {

    // parametro passado via contexto através da Rota. Ou seja,
    // quando eu criei a rota lá na 'main.dart' apontando esta classe e a chamei lá
    // na 'categories_item.dart' passando como argumento do 'ModalRoute.of(context)?.settings.arguments'
    // o objeto 'category' daquela proria classe, esse mesmo objeto é obtido aqui.
    final category = ModalRoute.of(context)?.settings.arguments as Category;

    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: Center(
        child: Text('Receitas por Categoria. ID: ${category.id}'),
      ),
    );
  }
}
