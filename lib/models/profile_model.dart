
// ignore_for_file: no_leading_underscores_for_local_identifiers

class ProfileModel {
  int? count;
  dynamic next;
  dynamic previous;
  List<Results>? results;

  ProfileModel({this.count, this.next, this.previous, this.results});

  ProfileModel.fromJson(Map<String, dynamic> json) {
    if(json["count"] is int) {
      count = json["count"];
    }
    next = json["next"];
    previous = json["previous"];
    if(json["results"] is List) {
      results = json["results"] == null ? null : (json["results"] as List).map((e) => Results.fromJson(e)).toList();
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["count"] = count;
    _data["next"] = next;
    _data["previous"] = previous;
    if(results != null) {
      _data["results"] = results?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

class Results {
  int? id;
  dynamic userPhoto;
  dynamic firstName;
  dynamic lastName;
  dynamic age;
  dynamic phoneNumber;

  Results({this.id, this.userPhoto, this.firstName, this.lastName, this.age, this.phoneNumber});

  Results.fromJson(Map<String, dynamic> json) {
    if(json["id"] is int) {
      id = json["id"];
    }
    userPhoto = json["user_photo"];
    firstName = json["first_name"];
    lastName = json["last_name"];
    age = json["age"];
    phoneNumber = json["phone_number"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["user_photo"] = userPhoto;
    _data["first_name"] = firstName;
    _data["last_name"] = lastName;
    _data["age"] = age;
    _data["phone_number"] = phoneNumber;
    return _data;
  }
}