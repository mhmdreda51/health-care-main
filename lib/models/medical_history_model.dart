class MedicalHistory {
  int? count;
  dynamic next;
  dynamic previous;
  List<Results>? results;

  MedicalHistory({this.count, this.next, this.previous, this.results});

  MedicalHistory.fromJson(Map<String, dynamic> json) {
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
  int? illnessesNumbers;
  String? illnesses;
  String? illnessesDescriptions;
  String? allergies;
  String? surgeries;
  String? immunizations;
  String? resultsOfPhysicalExamsAndTests;
  dynamic physicalExamsAndTestsImages;
  String? medicines;
  dynamic medicinesImages;
  String? medicalRays;
  dynamic medicalRaysImages;
  String? healthHabits;

  Results(
      {this.id,
      this.illnessesNumbers,
      this.illnesses,
      this.illnessesDescriptions,
      this.allergies,
      this.surgeries,
      this.immunizations,
      this.resultsOfPhysicalExamsAndTests,
      this.physicalExamsAndTestsImages,
      this.medicines,
      this.medicinesImages,
      this.medicalRays,
      this.medicalRaysImages,
      this.healthHabits});

  Results.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    illnessesNumbers = json["illnesses_numbers"];
    illnesses = json["illnesses"];
    illnessesDescriptions = json["illnesses_descriptions"];
    allergies = json["allergies"];
    surgeries = json["surgeries"];
    immunizations = json["immunizations"];
    resultsOfPhysicalExamsAndTests =
        json["results_of_physical_exams_and_tests"];
    physicalExamsAndTestsImages = json["physical_exams_and_tests_images"];
    medicines = json["medicines"];
    medicinesImages = json["medicines_images"];
    medicalRays = json["medical_rays"];
    medicalRaysImages = json["medical_rays_images"];
    healthHabits = json["health_habits"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["id"] = id;
    data["illnesses_numbers"] = illnessesNumbers;
    data["illnesses"] = illnesses;
    data["illnesses_descriptions"] = illnessesDescriptions;
    data["allergies"] = allergies;
    data["surgeries"] = surgeries;
    data["immunizations"] = immunizations;
    data["results_of_physical_exams_and_tests"] =
        resultsOfPhysicalExamsAndTests;
    data["physical_exams_and_tests_images"] = physicalExamsAndTestsImages;
    data["medicines"] = medicines;
    data["medicines_images"] = medicinesImages;
    data["medical_rays"] = medicalRays;
    data["medical_rays_images"] = medicalRaysImages;
    data["health_habits"] = healthHabits;
    return data;
  }
}
