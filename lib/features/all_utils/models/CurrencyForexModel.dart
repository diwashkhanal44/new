import 'dart:convert';

class CurrencyForexModel {
  CurrencyForexModel({
    this.status,
    this.errors,
    this.params,
    this.data,
    this.pagination,
  });

  Status? status;
  Errors? errors;
  Params? params;
  Data? data;
  Pagination? pagination;

  CurrencyForexModel copyWith({
    Status? status,
    Errors? errors,
    Params? params,
    Data? data,
    Pagination? pagination,
  }) =>
      CurrencyForexModel(
        status: status ?? this.status,
        errors: errors ?? this.errors,
        params: params ?? this.params,
        data: data ?? this.data,
        pagination: pagination ?? this.pagination,
      );

  factory CurrencyForexModel.fromJson(String str) =>
      CurrencyForexModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CurrencyForexModel.fromMap(Map<String, dynamic> json) =>
      CurrencyForexModel(
        status: json["status"] == null ? null : Status.fromMap(json["status"]),
        errors: json["errors"] == null ? null : Errors.fromMap(json["errors"]),
        params: json["params"] == null ? null : Params.fromMap(json["params"]),
        data: json["data"] == null ? null : Data.fromMap(json["data"]),
        pagination: json["pagination"] == null
            ? null
            : Pagination.fromMap(json["pagination"]),
      );

  Map<String, dynamic> toMap() => {
        "status": status == null ? null : status!.toMap(),
        "errors": errors == null ? null : errors!.toMap(),
        "params": params == null ? null : params!.toMap(),
        "data": data == null ? null : data!.toMap(),
        "pagination": pagination == null ? null : pagination!.toMap(),
      };
}

class Data {
  Data({
    this.payload,
  });

  List<Payload>? payload;

  Data copyWith({
    List<Payload>? payload,
  }) =>
      Data(
        payload: payload ?? this.payload,
      );

  factory Data.fromJson(String str) => Data.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Data.fromMap(Map<String, dynamic> json) => Data(
        payload: json["payload"] == null
            ? null
            : List<Payload>.from(
                json["payload"].map((x) => Payload.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "payload": payload == null
            ? null
            : List<dynamic>.from(payload!.map((x) => x.toMap())),
      };
}

class Payload {
  Payload({
    this.date,
    this.publishedOn,
    this.modifiedOn,
    this.rates,
  });

  DateTime? date;
  DateTime? publishedOn;
  DateTime? modifiedOn;
  List<Rate>? rates;

  Payload copyWith({
    DateTime? date,
    DateTime? publishedOn,
    DateTime? modifiedOn,
    List<Rate>? rates,
  }) =>
      Payload(
        date: date ?? this.date,
        publishedOn: publishedOn ?? this.publishedOn,
        modifiedOn: modifiedOn ?? this.modifiedOn,
        rates: rates ?? this.rates,
      );

  factory Payload.fromJson(String str) => Payload.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Payload.fromMap(Map<String, dynamic> json) => Payload(
        date: json["date"] == null ? null : DateTime.parse(json["date"]),
        publishedOn: json["published_on"] == null
            ? null
            : DateTime.parse(json["published_on"]),
        modifiedOn: json["modified_on"] == null
            ? null
            : DateTime.parse(json["modified_on"]),
        rates: json["rates"] == null
            ? null
            : List<Rate>.from(json["rates"].map((x) => Rate.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "date": date == null
            ? null
            : "${date!.year.toString().padLeft(4, '0')}-${date!.month.toString().padLeft(2, '0')}-${date!.day.toString().padLeft(2, '0')}",
        "published_on":
            publishedOn == null ? null : publishedOn!.toIso8601String(),
        "modified_on":
            modifiedOn == null ? null : modifiedOn!.toIso8601String(),
        "rates": rates == null
            ? null
            : List<dynamic>.from(rates!.map((x) => x.toMap())),
      };
}

class Rate {
  Rate({
    this.currency,
    this.buy,
    this.sell,
  });

  Currency? currency;
  String? buy;
  String? sell;

  Rate copyWith({
    Currency? currency,
    String? buy,
    String? sell,
  }) =>
      Rate(
        currency: currency ?? this.currency,
        buy: buy ?? this.buy,
        sell: sell ?? this.sell,
      );

  factory Rate.fromJson(String str) => Rate.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Rate.fromMap(Map<String, dynamic> json) => Rate(
        currency: json["currency"] == null
            ? null
            : Currency.fromMap(json["currency"]),
        buy: json["buy"] == null ? null : json["buy"],
        sell: json["sell"] == null ? null : json["sell"],
      );

  Map<String, dynamic> toMap() => {
        "currency": currency == null ? null : currency!.toMap(),
        "buy": buy == null ? null : buy,
        "sell": sell == null ? null : sell,
      };
}

class Currency {
  Currency({
    this.iso3,
    this.name,
    this.unit,
  });

  String? iso3;
  String? name;
  int? unit;

  Currency copyWith({
    String? iso3,
    String? name,
    int? unit,
  }) =>
      Currency(
        iso3: iso3 ?? this.iso3,
        name: name ?? this.name,
        unit: unit ?? this.unit,
      );

  factory Currency.fromJson(String str) => Currency.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Currency.fromMap(Map<String, dynamic> json) => Currency(
        iso3: json["iso3"] == null ? null : json["iso3"],
        name: json["name"] == null ? null : json["name"],
        unit: json["unit"] == null ? null : json["unit"],
      );

  Map<String, dynamic> toMap() => {
        "iso3": iso3 == null ? null : iso3,
        "name": name == null ? null : name,
        "unit": unit == null ? null : unit,
      };
}

class Errors {
  Errors({
    this.validation,
  });

  dynamic validation;

  Errors copyWith({
    dynamic validation,
  }) =>
      Errors(
        validation: validation ?? this.validation,
      );

  factory Errors.fromJson(String str) => Errors.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Errors.fromMap(Map<String, dynamic> json) => Errors(
        validation: json["validation"],
      );

  Map<String, dynamic> toMap() => {
        "validation": validation,
      };
}

class Pagination {
  Pagination({
    this.page,
    this.pages,
    this.perPage,
    this.total,
    this.links,
  });

  int? page;
  int? pages;
  int? perPage;
  int? total;
  Links? links;

  Pagination copyWith({
    int? page,
    int? pages,
    int? perPage,
    int? total,
    Links? links,
  }) =>
      Pagination(
        page: page ?? this.page,
        pages: pages ?? this.pages,
        perPage: perPage ?? this.perPage,
        total: total ?? this.total,
        links: links ?? this.links,
      );

  factory Pagination.fromJson(String str) =>
      Pagination.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Pagination.fromMap(Map<String, dynamic> json) => Pagination(
        page: json["page"] == null ? null : json["page"],
        pages: json["pages"] == null ? null : json["pages"],
        perPage: json["per_page"] == null ? null : json["per_page"],
        total: json["total"] == null ? null : json["total"],
        links: json["links"] == null ? null : Links.fromMap(json["links"]),
      );

  Map<String, dynamic> toMap() => {
        "page": page == null ? null : page,
        "pages": pages == null ? null : pages,
        "per_page": perPage == null ? null : perPage,
        "total": total == null ? null : total,
        "links": links == null ? null : links!.toMap(),
      };
}

class Links {
  Links({
    this.prev,
    this.next,
  });

  dynamic prev;
  dynamic next;

  Links copyWith({
    dynamic prev,
    dynamic next,
  }) =>
      Links(
        prev: prev ?? this.prev,
        next: next ?? this.next,
      );

  factory Links.fromJson(String str) => Links.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Links.fromMap(Map<String, dynamic> json) => Links(
        prev: json["prev"],
        next: json["next"],
      );

  Map<String, dynamic> toMap() => {
        "prev": prev,
        "next": next,
      };
}

class Params {
  Params({
    this.from,
    this.to,
    this.perPage,
    this.page,
  });

  String? from;
  String? to;
  String? perPage;
  String? page;

  Params copyWith({
    String? from,
    String? to,
    String? perPage,
    String? page,
  }) =>
      Params(
        from: from ?? this.from,
        to: to ?? this.to,
        perPage: perPage ?? this.perPage,
        page: page ?? this.page,
      );

  factory Params.fromJson(String str) => Params.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Params.fromMap(Map<String, dynamic> json) => Params(
        from: json["from"] == null ? null : json["from"],
        to: json["to"] == null ? null : json["to"],
        perPage: json["per_page"] == null ? null : json["per_page"],
        page: json["page"] == null ? null : json["page"],
      );

  Map<String, dynamic> toMap() => {
        "from": from == null ? null : from,
        "to": to == null ? null : to,
        "per_page": perPage == null ? null : perPage,
        "page": page == null ? null : page,
      };
}

class Status {
  Status({
    this.code,
  });

  int? code;

  Status copyWith({
    int? code,
  }) =>
      Status(
        code: code ?? this.code,
      );

  factory Status.fromJson(String str) => Status.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Status.fromMap(Map<String, dynamic> json) => Status(
        code: json["code"] == null ? null : json["code"],
      );

  Map<String, dynamic> toMap() => {
        "code": code == null ? null : code,
      };
}
