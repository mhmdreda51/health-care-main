// ignore_for_file: no_leading_underscores_for_local_identifiers

class DoctorModel {
  int? count;
  dynamic next;
  dynamic previous;
  List<Results>? results;

  DoctorModel({this.count, this.next, this.previous, this.results});

  DoctorModel.fromJson(Map<String, dynamic> json) {
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
    if (json["id"] is int) {
      id = json["id"];
    }
    if (json["his_city"] is Map) {
      hisCity =
          json["his_city"] == null ? null : HisCity.fromJson(json["his_city"]);
    }
    if (json["his_specialty"] is Map) {
      hisSpecialty = json["his_specialty"] == null
          ? null
          : HisSpecialty.fromJson(json["his_specialty"]);
    }
    if (json["his_governorate"] is Map) {
      hisGovernorate = json["his_governorate"] == null
          ? null
          : HisGovernorate.fromJson(json["his_governorate"]);
    }
    hisPhoto = json["his_photo"];
    if (json["his_name"] is String) {
      hisName = json["his_name"];
    }
    if (json["his_age"] is int) {
      hisAge = json["his_age"];
    }
    if (json["his_sex"] is String) {
      hisSex = json["his_sex"];
    }
    if (json["his_clinic_name"] is String) {
      hisClinicName = json["his_clinic_name"];
    }
    if (json["his_clinic_location"] is String) {
      hisClinicLocation = json["his_clinic_location"];
    }
    if (json["his_clinic_number"] is String) {
      hisClinicNumber = json["his_clinic_number"];
    }
    if (json["his_clinic_start_at"] is int) {
      hisClinicStartAt = json["his_clinic_start_at"];
    }
    if (json["his_clinic_finsh_at"] is int) {
      hisClinicFinshAt = json["his_clinic_finsh_at"];
    }
    if (json["his_clinic_price"] is int) {
      hisClinicPrice = json["his_clinic_price"];
    }
    if (json["his_email_for_connect"] is String) {
      hisEmailForConnect = json["his_email_for_connect"];
    }
    if (json["his_number_for_connect"] is String) {
      hisNumberForConnect = json["his_number_for_connect"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    if (hisCity != null) {
      _data["his_city"] = hisCity?.toJson();
    }
    if (hisSpecialty != null) {
      _data["his_specialty"] = hisSpecialty?.toJson();
    }
    if (hisGovernorate != null) {
      _data["his_governorate"] = hisGovernorate?.toJson();
    }
    _data["his_photo"] = hisPhoto;
    _data["his_name"] = hisName;
    _data["his_age"] = hisAge;
    _data["his_sex"] = hisSex;
    _data["his_clinic_name"] = hisClinicName;
    _data["his_clinic_location"] = hisClinicLocation;
    _data["his_clinic_number"] = hisClinicNumber;
    _data["his_clinic_start_at"] = hisClinicStartAt;
    _data["his_clinic_finsh_at"] = hisClinicFinshAt;
    _data["his_clinic_price"] = hisClinicPrice;
    _data["his_email_for_connect"] = hisEmailForConnect;
    _data["his_number_for_connect"] = hisNumberForConnect;
    return _data;
  }
}

class HisGovernorate {
  String? name;

  HisGovernorate({this.name});

  HisGovernorate.fromJson(Map<String, dynamic> json) {
    if (json["name"] is String) {
      name = json["name"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    return _data;
  }
}

class HisSpecialty {
  String? name;

  HisSpecialty({this.name});

  HisSpecialty.fromJson(Map<String, dynamic> json) {
    if (json["name"] is String) {
      name = json["name"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    return _data;
  }
}

class HisCity {
  String? name;

  HisCity({this.name});

  HisCity.fromJson(Map<String, dynamic> json) {
    if (json["name"] is String) {
      name = json["name"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    return _data;
  }
}
