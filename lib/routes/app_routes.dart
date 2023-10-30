import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/inicio_modulos.dart';
import 'package:flutter_application_1/screen/screen.dart';

class AppRoutes {
  static const initialRoute = 'login';
  static Map<String, Widget Function(BuildContext)> routes = {
    'login': (BuildContext context) => const LoginScreen(),
    'edit': (BuildContext context) => const EditProductScreen(),
    'add_user': (BuildContext context) => const RegisterUserScreen(),
    'vista_inicio': (BuildContext context) => const InitialScreen(),
    'modulo_proveedores': (BuildContext context) => const ListProveedorScreen(),
    'modulo_categorias': (BuildContext context) => const ListCategoryScreen(),
    'modulo_producto': (BuildContext context) => const ListProductScreen(),
  };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const ErrorScreen(),
    );
  }
}
