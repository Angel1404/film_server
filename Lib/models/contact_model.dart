// ignore_for_file: non_constant_identifier_descriptions, non_constant_identifier_names

import 'package:annotated_shelf/annotated_shelf.dart';

class Contact extends Form {
  final int? id;
  final String id_contact, customer_id;
  final String? description;
  final DateTime? created_at, updated_at;

  Contact({this.id, required this.description, required this.id_contact, required this.customer_id, this.created_at, this.updated_at});

  @override
  factory Contact.fromJson(Map<String, dynamic> json) {
    return Contact(
      id: json['id'],
      description: json['description'],
      id_contact: json['id_contact'],
      customer_id: json['customer_id'],
      created_at: json['created_at'],
      updated_at: json['updated_at'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "description": description,
      "id_contact": id_contact,
      "customer_id": customer_id,
      "created_at": created_at,
      "updated_at": updated_at,
    };
  }
}
