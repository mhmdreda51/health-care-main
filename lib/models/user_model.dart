class EditUserModel {
  int? id;
  dynamic userPhoto;
  String? firstName;
  String? lastName;
  dynamic age;
  String? phoneNumber;

  EditUserModel(
      {this.id,
      this.userPhoto,
      this.firstName,
      this.lastName,
      this.age,
      this.phoneNumber});

  EditUserModel.fromJson(Map<String, dynamic> json) {
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
