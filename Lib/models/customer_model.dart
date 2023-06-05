import 'package:annotated_shelf/annotated_shelf.dart';
// ignore_for_file: non_constant_identifier_names

class Customer extends Form {
  final int? id;
  final String name, lastname, id_customer, email;
  final String? role;
  final int? status;
  final DateTime? created_at, updated_at;

  Customer({
    this.id,
    required this.id_customer,
    required this.name,
    required this.lastname,
    required this.email,
    this.role,
    this.status,
    this.created_at,
    this.updated_at,
  });
  @override
  factory Customer.formJson(Map<String, dynamic> json) {
    return Customer(
      id: json['id'],
      id_customer: json['id_customer'],
      name: json['name'],
      lastname: json['lastname'],
      email: json['email'],
      role: json['role'],
      status: json['status'],
      created_at: json['created_at'],
      updated_at: json['updated_at'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "id_customer": id_customer,
      "name": name,
      "lastname": lastname,
      "email": email,
      "role": role,
      "status": status,
      "created_at": created_at,
      "updated_at": updated_at,
    };
  }
}
