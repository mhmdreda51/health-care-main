
// ignore_for_file: no_leading_underscores_for_local_identifiers, file_names

class NursesSpecialtyModel {
    int? count;
    dynamic next;
    dynamic previous;
    List<Results>? results;

    NursesSpecialtyModel({this.count, this.next, this.previous, this.results});

    NursesSpecialtyModel.fromJson(Map<String, dynamic> json) {
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
    String? name;

    Results({this.name});

    Results.fromJson(Map<String, dynamic> json) {
        name = json["name"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["name"] = name;
        return _data;
    }
}