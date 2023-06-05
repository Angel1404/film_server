// ignore_for_file: non_constant_identifier_names

import 'package:annotated_shelf/annotated_shelf.dart';

class FilmMedia extends Form {
  final int? id;
  final String id_media, manager_id, url, title, type, categorie;
  final String? description;
  final DateTime? created_at, updated_at;

  FilmMedia({
    this.id,
    required this.id_media,
    required this.manager_id,
    required this.url,
    required this.title,
    required this.type,
    required this.categorie,
    this.description,
    this.created_at,
    this.updated_at,
  });

  @override
  factory FilmMedia.fromJson(Map<String, dynamic> json) {
    return FilmMedia(
      id: json["id"],
      id_media: json['id_media'],
      manager_id: json['manager_id'],
      url: json['url'],
      title: json['title'],
      type: json['type'],
      description: json['description'],
      categorie: json['categorie'],
      created_at: json['created_at'],
      updated_at: json['updated_at'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "id_media": id_media,
      "manager_id": manager_id,
      "url": url,
      "title": title,
      "type": type,
      "description": description,
      "categorie": categorie,
      "created_at": created_at,
      "updated_at": updated_at,
    };
  }
}
