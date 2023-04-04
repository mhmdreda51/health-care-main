class CreateMedicalHistory {
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

  CreateMedicalHistory(
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

  CreateMedicalHistory.fromJson(Map<String, dynamic> json) {
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
