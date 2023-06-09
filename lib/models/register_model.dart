
// ignore_for_file: no_leading_underscores_for_local_identifiers

class RegisterModel {
  User? user;
  String? token;

  RegisterModel({this.user, this.token});

  RegisterModel.fromJson(Map<String, dynamic> json) {
    if(json["user"] is Map) {
      user = json["user"] == null ? null : User.fromJson(json["user"]);
    }
    if(json["token"] is String) {
      token = json["token"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(user != null) {
      _data["user"] = user?.toJson();
    }
    _data["token"] = token;
    return _data;
  }
}

class User {
  int? id;
  String? username;
  String? email;

  User({this.id, this.username, this.email});

  User.fromJson(Map<String, dynamic> json) {
    if(json["id"] is int) {
      id = json["id"];
    }
    if(json["username"] is String) {
      username = json["username"];
    }
    if(json["email"] is String) {
      email = json["email"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["username"] = username;
    _data["email"] = email;
    return _data;
  }
}