
// ignore_for_file: no_leading_underscores_for_local_identifiers

class NursesModel {
    int? count;
    dynamic next;
    dynamic previous;
    List<Results>? results;

    NursesModel({this.count, this.next, this.previous, this.results});

    NursesModel.fromJson(Map<String, dynamic> json) {
        count = json["count"];
        next = json["next"];
        previous = json["previous"];
        results = json["results"] == null ? null : (json["results"] as List).map((e) => Results.fromJson(e)).toList();
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
    HisCity? hisCity;
    HisSpecialty? hisSpecialty;
    HisGovernorate? hisGovernorate;
    String? hisPhoto;
    String? hisName;
    int? hisAge;
    String? hisSex;
    String? hisHospital;
    String? hisDegree;
    String? hisEmailForConnect;
    String? hisNumberForConnect;

    Results({this.id, this.hisCity, this.hisSpecialty, this.hisGovernorate, this.hisPhoto, this.hisName, this.hisAge, this.hisSex, this.hisHospital, this.hisDegree, this.hisEmailForConnect, this.hisNumberForConnect});

    Results.fromJson(Map<String, dynamic> json) {
        id = json["id"];
        hisCity = json["his_city"] == null ? null : HisCity.fromJson(json["his_city"]);
        hisSpecialty = json["his_specialty"] == null ? null : HisSpecialty.fromJson(json["his_specialty"]);
        hisGovernorate = json["his_governorate"] == null ? null : HisGovernorate.fromJson(json["his_governorate"]);
        hisPhoto = json["his_photo"];
        hisName = json["his_name"];
        hisAge = json["his_age"];
        hisSex = json["his_sex"];
        hisHospital = json["his_hospital"];
        hisDegree = json["his_degree"];
        hisEmailForConnect = json["his_email_for_connect"];
        hisNumberForConnect = json["his_number_for_connect"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["id"] = id;
        if(hisCity != null) {
            _data["his_city"] = hisCity?.toJson();
        }
        if(hisSpecialty != null) {
            _data["his_specialty"] = hisSpecialty?.toJson();
        }
        if(hisGovernorate != null) {
            _data["his_governorate"] = hisGovernorate?.toJson();
        }
        _data["his_photo"] = hisPhoto;
        _data["his_name"] = hisName;
        _data["his_age"] = hisAge;
        _data["his_sex"] = hisSex;
        _data["his_hospital"] = hisHospital;
        _data["his_degree"] = hisDegree;
        _data["his_email_for_connect"] = hisEmailForConnect;
        _data["his_number_for_connect"] = hisNumberForConnect;
        return _data;
    }
}

class HisGovernorate {
    String? name;

    HisGovernorate({this.name});

    HisGovernorate.fromJson(Map<String, dynamic> json) {
        name = json["name"];
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
        name = json["name"];
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
        name = json["name"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["name"] = name;
        return _data;
    }
}