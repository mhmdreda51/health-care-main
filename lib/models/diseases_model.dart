// ignore_for_file: no_leading_underscores_for_local_identifiers

class DiseasesModel {
  int? count;
  dynamic next;
  dynamic previous;
  List<Results>? results;

  DiseasesModel({this.count, this.next, this.previous, this.results});

  DiseasesModel.fromJson(Map<String, dynamic> json) {
    if (json["count"] is int) {
      count = json["count"];
    }
    next = json["next"];
    previous = json["previous"];
    if (json["results"] is List) {
      results = json["results"] == null
          ? null
          : (json["results"] as List).map((e) => Results.fromJson(e)).toList();
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["count"] = count;
    _data["next"] = next;
    _data["previous"] = previous;
    if (results != null) {
      _data["results"] = results?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

class Results {
  int? id;
  String? name;
  String? desciption;
  String? treatment;

  Results({this.id, this.name, this.desciption, this.treatment});

  Results.fromJson(Map<String, dynamic> json) {
    if (json["id"] is int) {
      id = json["id"];
    }
    if (json["name"] is String) {
      name = json["name"];
    }
    if (json["desciption"] is String) {
      desciption = json["desciption"];
    }
    if (json["treatment"] is String) {
      treatment = json["treatment"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["name"] = name;
    _data["desciption"] = desciption;
    _data["treatment"] = treatment;
    return _data;
  }
}
