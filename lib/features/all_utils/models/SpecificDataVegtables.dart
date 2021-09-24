// To parse this JSON data, do
//
//     final specificDayVegtable = specificDayVegtableFromMap(jsonString);

import 'dart:convert';

class SpecificDayVegtable {
  SpecificDayVegtable({
    required this.date,
    required this.data,
  });

  final DateTime? date;
  final List<Vegtable>? data;

  SpecificDayVegtable copyWith({
    DateTime? date,
    List<Vegtable>? data,
  }) =>
      SpecificDayVegtable(
        date: date ?? this.date,
        data: data ?? this.data,
      );

  factory SpecificDayVegtable.fromJson(String str) =>
      SpecificDayVegtable.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory SpecificDayVegtable.fromMap(Map<String, dynamic> json) =>
      SpecificDayVegtable(
        date: json["date"] == null ? null : DateTime.parse(json["date"]),
        data: json["data"] == null
            ? null
            : List<Vegtable>.from(json["data"].map((x) => Vegtable.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "date": date == null
            ? null
            : "${date!.year.toString().padLeft(4, '0')}-${date!.month.toString().padLeft(2, '0')}-${date!.day.toString().padLeft(2, '0')}",
        "data": data == null
            ? null
            : List<dynamic>.from(data!.map((x) => x.toMap())),
      };
}

class Vegtable {
  Vegtable({
    required this.avg,
    required this.max,
    required this.min,
    required this.unit,
    required this.image,
    required this.vegetable,
  });

  final String? avg;
  final String? max;
  final String? min;
  final String? unit;
  final String? image;
  final String? vegetable;

  Vegtable copyWith({
    String? avg,
    String? max,
    String? min,
    String? unit,
    String? image,
    String? vegetable,
  }) =>
      Vegtable(
        avg: avg ?? this.avg,
        max: max ?? this.max,
        min: min ?? this.min,
        unit: unit ?? this.unit,
        image: image ?? this.image,
        vegetable: vegetable ?? this.vegetable,
      );

  factory Vegtable.fromJson(String str) => Vegtable.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Vegtable.fromMap(Map<String, dynamic> json) => Vegtable(
        avg: json["avg"] == null ? null : json["avg"],
        max: json["max"] == null ? null : json["max"],
        min: json["min"] == null ? null : json["min"],
        unit: json["unit"] == null ? null : json["unit"],
        image: json["image"] == null ? null : json["image"],
        vegetable: json["vegetable"] == null ? null : json["vegetable"],
      );

  Map<String, dynamic> toMap() => {
        "avg": avg == null ? null : avg,
        "max": max == null ? null : max,
        "min": min == null ? null : min,
        "unit": unit == null ? null : unit,
        "image": image == null ? null : image,
        "vegetable": vegetable == null ? null : vegetable,
      };
}
