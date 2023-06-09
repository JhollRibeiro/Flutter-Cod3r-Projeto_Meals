import 'package:flutter/material.dart';
import 'package:meals/models/category.dart';
import 'package:meals/utils/app_routes.dart';

class CategoryItem extends StatelessWidget {
  final Category category;

  const CategoryItem({
    super.key,
    required this.category,
  });

  void _selectcategory(BuildContext context) {
    // Chamando a Rota nomeada para a tela 'CategoriesMealsScreen'.
    // OBS: A configuração da Rota é feita na 'main.dart'
    Navigator.of(context).pushNamed(AppRoutes.CATEGORIES_MEALS, arguments: category,);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _selectcategory(context);
      },
      borderRadius: BorderRadius.circular(10),
      splashColor: Theme.of(context).colorScheme.primary,
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            colors: [
              category.color.withOpacity(0.5),
              category.color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Text(
          category.title,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
    );
  }
}
