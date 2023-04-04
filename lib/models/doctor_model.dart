class DoctorModel {
  int? count;
  dynamic next;
  dynamic previous;
  List<Results>? results;

  DoctorModel({this.count, this.next, this.previous, this.results});

  DoctorModel.fromJson(Map<String, dynamic> json) {
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
  HisCity? hisCity;
  HisSpecialty? hisSpecialty;
  HisGovernorate? hisGovernorate;
  dynamic hisPhoto;
  String? hisName;
  int? hisAge;
  String? hisSex;
  String? hisClinicName;
  String? hisClinicLocation;
  String? hisClinicNumber;
  int? hisClinicStartAt;
  int? hisClinicFinshAt;
  int? hisClinicPrice;
  String? hisEmailForConnect;
  String? hisNumberForConnect;

  Results(
      {this.id,
      this.hisCity,
      this.hisSpecialty,
      this.hisGovernorate,
      this.hisPhoto,
      this.hisName,
      this.hisAge,
      this.hisSex,
      this.hisClinicName,
      this.hisClinicLocation,
      this.hisClinicNumber,
      this.hisClinicStartAt,
      this.hisClinicFinshAt,
      this.hisClinicPrice,
      this.hisEmailForConnect,
      this.hisNumberForConnect});

  Results.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    hisCity =
        json["his_city"] == null ? null : HisCity.fromJson(json["his_city"]);
    hisSpecialty = json["his_specialty"] == null
        ? null
        : HisSpecialty.fromJson(json["his_specialty"]);
    hisGovernorate = json["his_governorate"] == null
        ? null
        : HisGovernorate.fromJson(json["his_governorate"]);
    hisPhoto = json["his_photo"];
    hisName = json["his_name"];
    hisAge = json["his_age"];
    hisSex = json["his_sex"];
    hisClinicName = json["his_clinic_name"];
    hisClinicLocation = json["his_clinic_location"];
    hisClinicNumber = json["his_clinic_number"];
    hisClinicStartAt = json["his_clinic_start_at"];
    hisClinicFinshAt = json["his_clinic_finsh_at"];
    hisClinicPrice = json["his_clinic_price"];
    hisEmailForConnect = json["his_email_for_connect"];
    hisNumberForConnect = json["his_number_for_connect"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["id"] = id;
    if (hisCity != null) {
      data["his_city"] = hisCity?.toJson();
    }
    if (hisSpecialty != null) {
      data["his_specialty"] = hisSpecialty?.toJson();
    }
    if (hisGovernorate != null) {
      data["his_governorate"] = hisGovernorate?.toJson();
    }
    data["his_photo"] = hisPhoto;
    data["his_name"] = hisName;
    data["his_age"] = hisAge;
    data["his_sex"] = hisSex;
    data["his_clinic_name"] = hisClinicName;
    data["his_clinic_location"] = hisClinicLocation;
    data["his_clinic_number"] = hisClinicNumber;
    data["his_clinic_start_at"] = hisClinicStartAt;
    data["his_clinic_finsh_at"] = hisClinicFinshAt;
    data["his_clinic_price"] = hisClinicPrice;
    data["his_email_for_connect"] = hisEmailForConnect;
    data["his_number_for_connect"] = hisNumberForConnect;
    return data;
  }
}

class HisGovernorate {
  String? name;

  HisGovernorate({this.name});

  HisGovernorate.fromJson(Map<String, dynamic> json) {
    name = json["name"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["name"] = name;
    return data;
  }
}

class HisSpecialty {
  String? name;

  HisSpecialty({this.name});

  HisSpecialty.fromJson(Map<String, dynamic> json) {
    name = json["name"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["name"] = name;
    return data;
  }
}

class HisCity {
  String? name;

  HisCity({this.name});

  HisCity.fromJson(Map<String, dynamic> json) {
    name = json["name"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["name"] = name;
    return data;
  }
}
