import 'package:flutter/material.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        drawer: Drawer(
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  margin: const EdgeInsets.only(top: 50, bottom: 20),
                  child: Image.network(
                      'https://static.vecteezy.com/system/resources/previews/009/267/561/original/user-icon-design-free-png.png'),
                ),
                const Text("Fernando Rojas",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'modulo_producto');
                    },
                    child: const Text("Módulo de Producto")),
                TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'modulo_proveedores');
                    },
                    child: const Text("Módulo de Proveedores")),
                TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'modulo_categorias');
                    },
                    child: const Text("Módulo de Categorías")),
                Expanded(child: Container()),
                TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'login');
                    },
                    child: const Text("Sign Out")),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          title: const Text('Exámen Final Computación Movil'),
        ),
        body: const Center(
          child: Text('ABRA EL MENÚ DE LA IZQUIERA PARA VER LOS MÓDULOS'),
        ),
      ),
    );
  }
}
