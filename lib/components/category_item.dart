import 'package:flutter/material.dart';

import '../models/category.dart';
import '../utils/app_routes.dart';

class CategoryItem extends StatelessWidget {
  final Category category;

  const CategoryItem(this.category);

  void _selectCategory(BuildContext context) {
    // Colocando mais uma tela na pilha de telas

    // Navigator.of(context).push(
    //   MaterialPageRoute(
    //     builder: (_) {
    //       return CategoriesMealsScreen(category);
    //     },
    //   ),
    // );

    // Utilizando rotas nomeadas
    Navigator.of(context).pushNamed(
      AppRoutes.CATEGORIES_MEALS,
      // Passo o objeto como sendo um atributo
      arguments: category,
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // Quando pressionado
      onTap: () => _selectCategory(context),
      splashColor: Theme.of(context).colorScheme.primary,
      // Manter o clique dentro da area esperada
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(
          category.title,
          style: Theme.of(context).textTheme.headline6,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            colors: [
              category.color.withOpacity(0.5),
              category.color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
      ),
    );
  }
}
