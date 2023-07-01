part of 'doctor_cubit.dart';

@immutable
abstract class DoctorState {}

class DoctorInitial extends DoctorState {}

class GetDoctorsLoading extends DoctorState {}

class GetDoctorsSuccess extends DoctorState {}

class GetDoctorsError extends DoctorState {}

class GetDoctoresCitiesLoading extends DoctorState {}

class GetDoctorsCitiesSuccess extends DoctorState {}

class GetDoctorsCitiesError extends DoctorState {}

class GetDoctoresSpecialtyLoading extends DoctorState {}

class GetDoctorsSpecialtySuccess extends DoctorState {}

class GetDoctorsSpecialtyError extends DoctorState {}

class SelectCityIdState extends DoctorState {}

class SelectSpecialtyIdState extends DoctorState {}

class GetDoctorsSearchLoading extends DoctorState {}

class GetDoctorsSearchSuccess extends DoctorState {}

class GetDoctorsSearchError extends DoctorState {}
class ClearSearchData extends DoctorState {}
