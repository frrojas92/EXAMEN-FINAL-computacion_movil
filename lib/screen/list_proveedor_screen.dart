import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/proveedor.dart';
import 'package:flutter_application_1/services/proveedor_service.dart';
import 'package:flutter_application_1/widgets/proveedor_card.dart';
import 'package:provider/provider.dart';

import 'package:flutter_application_1/screen/screen.dart';

class ListProveedorScreen extends StatelessWidget {
  const ListProveedorScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final proveedorService = Provider.of<ProveedorService>(context);
    if (proveedorService.isLoading) return LoadingScreen();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listado de Proveedores'),
      ),
      body: ListView.builder(
        itemCount: proveedorService.proveedores.length,
        itemBuilder: (BuildContext context, index) => GestureDetector(
          onTap: () {
            proveedorService.SelectProveedor =
                proveedorService.proveedores[index].copy();
            Navigator.pushNamed(context, 'edit');
          },
          // child: CategoryCard(category: categoryService.categories[index]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          proveedorService.SelectProveedor = ListadoProv(
            providerid: 0,
            provider_name: '',
            provider_last_name: '',
            provider_mail: '',
            provider_state: '',
          );
          Navigator.pushNamed(context, 'edit');
        },
      ),
    );
  }
}
