class ProfileModel {
  int? count;
  dynamic next;
  dynamic previous;
  List<Results>? results;

  ProfileModel({this.count, this.next, this.previous, this.results});

  ProfileModel.fromJson(Map<String, dynamic> json) {
    count = json["count"];
    next = json["next"];
    previous = json["previous"];
    results = json["results"] == null
        ? null
        : (json["results"] as List).map((e) => Results.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["count"] = count;
    data["next"] = next;
    data["previous"] = previous;
    if (results != null) {
      data["results"] = results?.map((e) => e.toJson()).toList();
    }
    return data;
  }
}

class Results {
  int? id;
  dynamic userPhoto;
  String? firstName;
  String? lastName;
  dynamic age;
  String? phoneNumber;

  Results({
    this.id,
    this.userPhoto,
    this.firstName,
    this.lastName,
    this.age,
    this.phoneNumber,
  });

  Results.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    userPhoto = json["user_photo"];
    firstName = json["first_name"];
    lastName = json["last_name"];
    age = json["age"];
    phoneNumber = json["phone_number"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["id"] = id;
    data["user_photo"] = userPhoto;
    data["first_name"] = firstName;
    data["last_name"] = lastName;
    data["age"] = age;
    data["phone_number"] = phoneNumber;
    return data;
  }
}
