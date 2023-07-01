
// ignore_for_file: no_leading_underscores_for_local_identifiers

class MedicalHistory {
  int? count;
  dynamic next;
  dynamic previous;
  List<Results>? results;

  MedicalHistory({this.count, this.next, this.previous, this.results});

  MedicalHistory.fromJson(Map<String, dynamic> json) {
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
  int? illnessesNumbers;
  String? illnesses;
  String? illnessesDescriptions;
  String? allergies;
  String? surgeries;
  String? immunizations;
  String? resultsOfPhysicalExamsAndTests;
  String? physicalExamsAndTestsImages;
  String? medicines;
  String? medicinesImages;
  String? medicalRays;
  String? medicalRaysImages;
  String? healthHabits;

  Results({this.id, this.illnessesNumbers, this.illnesses, this.illnessesDescriptions, this.allergies, this.surgeries, this.immunizations, this.resultsOfPhysicalExamsAndTests, this.physicalExamsAndTestsImages, this.medicines, this.medicinesImages, this.medicalRays, this.medicalRaysImages, this.healthHabits});

  Results.fromJson(Map<String, dynamic> json) {
    if(json["id"] is int) {
      id = json["id"];
    }
    if(json["illnesses_numbers"] is int) {
      illnessesNumbers = json["illnesses_numbers"];
    }
    if(json["illnesses"] is String) {
      illnesses = json["illnesses"];
    }
    if(json["illnesses_descriptions"] is String) {
      illnessesDescriptions = json["illnesses_descriptions"];
    }
    if(json["allergies"] is String) {
      allergies = json["allergies"];
    }
    if(json["surgeries"] is String) {
      surgeries = json["surgeries"];
    }
    if(json["immunizations"] is String) {
      immunizations = json["immunizations"];
    }
    if(json["results_of_physical_exams_and_tests"] is String) {
      resultsOfPhysicalExamsAndTests = json["results_of_physical_exams_and_tests"];
    }
    if(json["physical_exams_and_tests_images"] is String) {
      physicalExamsAndTestsImages = json["physical_exams_and_tests_images"];
    }
    if(json["medicines"] is String) {
      medicines = json["medicines"];
    }
    if(json["medicines_images"] is String) {
      medicinesImages = json["medicines_images"];
    }
    if(json["medical_rays"] is String) {
      medicalRays = json["medical_rays"];
    }
    if(json["medical_rays_images"] is String) {
      medicalRaysImages = json["medical_rays_images"];
    }
    if(json["health_habits"] is String) {
      healthHabits = json["health_habits"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["illnesses_numbers"] = illnessesNumbers;
    _data["illnesses"] = illnesses;
    _data["illnesses_descriptions"] = illnessesDescriptions;
    _data["allergies"] = allergies;
    _data["surgeries"] = surgeries;
    _data["immunizations"] = immunizations;
    _data["results_of_physical_exams_and_tests"] = resultsOfPhysicalExamsAndTests;
    _data["physical_exams_and_tests_images"] = physicalExamsAndTestsImages;
    _data["medicines"] = medicines;
    _data["medicines_images"] = medicinesImages;
    _data["medical_rays"] = medicalRays;
    _data["medical_rays_images"] = medicalRaysImages;
    _data["health_habits"] = healthHabits;
    return _data;
  }
}