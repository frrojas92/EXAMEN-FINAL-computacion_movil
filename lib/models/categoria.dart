import 'dart:convert';

class Category {
  Category({
    required this.listado,
  });

  List<ListadoCat> listado;

  factory Category.fromJson(String str) => Category.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Category.fromMap(Map<String, dynamic> json) => Category(
        listado: List<ListadoCat>.from(
            json["Listado Categorias"].map((x) => ListadoCat.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "Listado Categorias": List<dynamic>.from(listado.map((x) => x.toMap())),
      };
}

class ListadoCat {
  ListadoCat({
    required this.category_id,
    required this.category_name,
    required this.category_state,
  });

  int category_id;
  String category_name;
  String category_state;

  factory ListadoCat.fromJson(String str) =>
      ListadoCat.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ListadoCat.fromMap(Map<String, dynamic> json) => ListadoCat(
        category_id: json["category_id"],
        category_name: json["category_name"],
        category_state: json["category_state"],
      );

  Map<String, dynamic> toMap() => {
        "category_id": category_id,
        "category_name": category_name,
        "category_state": category_state,
      };

  ListadoCat copy() => ListadoCat(
      category_id: category_id,
      category_name: category_name,
      category_state: category_state);
}
