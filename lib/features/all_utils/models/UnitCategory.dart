import 'Units.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'UnitCategory.freezed.dart';
part 'UnitCategory.g.dart';

Category categoryFromJson(String str) => Category.fromJson(json.decode(str));

String categoryToJson(Category data) => json.encode(data.toJson());

@freezed
class Category with _$Category {
  factory Category({
    required String iconLocation,
    required String name,
    required List<Unit> units,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}
