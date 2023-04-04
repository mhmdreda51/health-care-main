part of 'doctor_screen_cubit.dart';

@immutable
abstract class DoctorScreenState {}

class DoctorScreenInitial extends DoctorScreenState {}

class LogoutLoadingState extends DoctorScreenState {}

class LogoutSuccessState extends DoctorScreenState {}

class LogoutErrorState extends DoctorScreenState {}

class GetUserDataLoadingState extends DoctorScreenState {}

class GetUserDataSuccessState extends DoctorScreenState {}

class GetUserDataErrorState extends DoctorScreenState {}

class GetUserDataNotCompleteState extends DoctorScreenState {}

class PickXrayImageState extends DoctorScreenState {}

class PickTestsImageState extends DoctorScreenState {}

class PickMedicionImageState extends DoctorScreenState {}

class CreateMedicalLoadingState extends DoctorScreenState {}

class CreateMedicalSuccessState extends DoctorScreenState {}

class CreateMedicalErrorState extends DoctorScreenState {}

class GetMedicalLoadingState extends DoctorScreenState {}

class GetMedicalSuccessState extends DoctorScreenState {}

class GetMedicalErrorState extends DoctorScreenState {}
