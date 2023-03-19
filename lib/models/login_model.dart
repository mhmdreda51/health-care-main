class LoginModel {
  String? expiry;
  String? token;

  LoginModel({this.expiry, this.token});

  LoginModel.fromJson(Map<String, dynamic> json) {
    expiry = json["expiry"];
    token = json["token"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["expiry"] = expiry;
    data["token"] = token;
    return data;
  }
}
