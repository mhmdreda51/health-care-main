import '../core/network_service.dart/dio_network_service.dart';

const String baseUrl = "https://graduateproject.pythonanywhere.com/";

const String login = 'accounts/login/';
const String register = 'accounts/register/';
const String forgetPassword = "accounts/forgetpassword";
const String profile = "accounts/profiles/";
const String logout = "accounts/logout/";
const String doctor = "doctors/doctors/";
const String doctorCities = "doctors/cities/";
const String doctorSpecialty = "doctors/specialty/";
const String nurses = "nurses/nursesfilter/";
const String nursesCities = "nurses/cities/";
const String nursesSpecialty = "nurses/specialty/";
const String medicalHistory = "accounts/medicalmistory/";
const String disease = "helpingpatient/disease/";
const String aid = "helpingpatient/aid/";
final NetworkService networkService = NetworkService(
  baseUrl: baseUrl,
  httpHeaders: {
    'Accept': 'application/json',
    'Content-Type': "application/json",
  },
);
