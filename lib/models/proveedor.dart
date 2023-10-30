import 'dart:convert';

class Proveedor {
  Proveedor({
    required this.listado,
  });

  List<ListadoProv> listado;

  factory Proveedor.fromJson(String str) => Proveedor.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Proveedor.fromMap(Map<String, dynamic> json) => Proveedor(
        listado: List<ListadoProv>.from(
            json["Proveedores Listado"].map((x) => ListadoProv.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "Proveedores Listado":
            List<dynamic>.from(listado.map((x) => x.toMap())),
      };
}

class ListadoProv {
  ListadoProv({
    required this.providerid,
    required this.provider_name,
    required this.provider_last_name,
    required this.provider_mail,
    required this.provider_state,
  });

  int providerid;
  String provider_name;
  String provider_last_name;
  String provider_mail;
  String provider_state;

  factory ListadoProv.fromJson(String str) =>
      ListadoProv.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ListadoProv.fromMap(Map<String, dynamic> json) => ListadoProv(
        providerid: json["providerid"],
        provider_name: json["provider_name"],
        provider_last_name: json["provider_last_name"],
        provider_mail: json["provider_mail"],
        provider_state: json["provider_state"],
      );

  Map<String, dynamic> toMap() => {
        "providerid": providerid,
        "provider_name": provider_name,
        "provider_last_name": provider_last_name,
        "provider_mail": provider_mail,
        "provider_state": provider_state,
      };

  ListadoProv copy() => ListadoProv(
        providerid: providerid,
        provider_name: provider_name,
        provider_last_name: provider_last_name,
        provider_mail: provider_mail,
        provider_state: provider_state,
      );
}
