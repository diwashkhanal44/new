import 'dart:convert';

NewsSourcesModel newsSourcesModelFromJson(String str) =>
    NewsSourcesModel.fromJson(json.decode(str));

String newsSourcesModelToJson(NewsSourcesModel data) =>
    json.encode(data.toJson());

class NewsSourcesModel {
  NewsSourcesModel({
    required this.data,
  });

  final List<Datum>? data;

  factory NewsSourcesModel.fromJson(Map<String, dynamic> json) =>
      NewsSourcesModel(
        data: json["data"] == null
            ? null
            : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": data == null
            ? null
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class Datum {
  Datum({
    required this.id,
    required this.name,
    required this.followersCount,
    required this.newsCount,
    required this.link,
    required this.logo,
  });

  final int? id;
  final String? name;
  final int? followersCount;
  final int? newsCount;
  final String? link;
  final String? logo;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        name: json["name"],
        followersCount: json["followers_count"],
        newsCount: json["news_count"],
        link: json["link"],
        logo: json["logo"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "followers_count": followersCount,
        "news_count": newsCount,
        "link": link,
        "logo": logo,
      };
}
