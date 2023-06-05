// ignore_for_file: overridden_fields, non_constant_identifier_names

import 'package:annotated_shelf/annotated_shelf.dart';

class User extends Form {
  final int? id;
  final String id_user, password, customer_id;

  final DateTime? created_at, updated_at;

  User({
    this.id,
    required this.id_user,
    required this.password,
    required this.customer_id,
    this.created_at,
    this.updated_at,
  });

  @override
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json["id"],
      id_user: json['id_user'],
      password: json['password'],
      customer_id: json['customer_id'],
      created_at: json['created_at'],
      updated_at: json['updated_at'],
    );
  }

  @override
  Map<String, dynamic> toJson({bool isCreate = false}) {
    return {
      "id": id,
      "id_user": id_user,
      "password": isCreate ? password : "",
      "customer_id": customer_id,
      "created_at": created_at,
      "updated_at": updated_at,
    };
  }
}
