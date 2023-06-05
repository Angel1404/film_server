// ignore_for_file: non_constant_identifier_names

import 'package:annotated_shelf/annotated_shelf.dart';

class Redes extends Form {
  final int? id, status;
  final String name, url, customer_id;
  final DateTime? created_at, updated_at;

  Redes({this.id, this.status, required this.name, required this.url, required this.customer_id, this.created_at, this.updated_at});

  @override
  factory Redes.fromJson(Map<String, dynamic> json) {
    return Redes(
      id: json['id'],
      name: json['name'],
      url: json['url'],
      customer_id: json['customer_id'],
      status: json['status'],
      created_at: json['created_at'],
      updated_at: json['updated_at'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "name": name,
      "url": url,
      "status": status,
      "customer_id": customer_id,
      "created_at": created_at,
      "updated_at": updated_at,
    };
  }
}
