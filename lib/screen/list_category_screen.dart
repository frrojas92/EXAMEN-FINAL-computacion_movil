import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/categoria.dart';
import 'package:flutter_application_1/services/category_service.dart';
import 'package:flutter_application_1/widgets/category_card.dart';
import 'package:provider/provider.dart';

import 'package:flutter_application_1/screen/screen.dart';

class ListCategoryScreen extends StatelessWidget {
  const ListCategoryScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final categoryService = Provider.of<CategoryService>(context);
    if (categoryService.isLoading) return LoadingScreen();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listado Categorias'),
      ),
      body: ListView.builder(
        itemCount: categoryService.categories.length,
        itemBuilder: (BuildContext context, index) => GestureDetector(
          onTap: () {
            categoryService.SelectCategory =
                categoryService.categories[index].copy();
            Navigator.pushNamed(context, 'edit');
          },
          // child: CategoryCard(category: categoryService.categories[index]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          categoryService.SelectCategory = ListadoCat(
            category_id: 0,
            category_name: '',
            category_state: '',
          );
          Navigator.pushNamed(context, 'edit');
        },
      ),
    );
  }
}
