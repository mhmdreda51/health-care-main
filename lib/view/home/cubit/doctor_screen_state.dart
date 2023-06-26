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

class GetUserDataNotCompleteState extends DoctorScreenState {
  final int id;

  GetUserDataNotCompleteState(this.id);
}

class PickXrayImageState extends DoctorScreenState {}

class PickTestsImageState extends DoctorScreenState {}

class PickMedicionImageState extends DoctorScreenState {}

class CreateMedicalLoadingState extends DoctorScreenState {}

class CreateMedicalSuccessState extends DoctorScreenState {}

class CreateMedicalErrorState extends DoctorScreenState {}

class GetMedicalLoadingState extends DoctorScreenState {}

class GetMedicalSuccessState extends DoctorScreenState {}

class GetMedicalErrorState extends DoctorScreenState {}

class GetDiseasesLoadingState extends DoctorScreenState {}

class GetDiseasesSuccessState extends DoctorScreenState {}

class GetDiseasesErrorState extends DoctorScreenState {}

class GetFirstAidLoadingState extends DoctorScreenState {}

class GetFirstAidSuccessState extends DoctorScreenState {}

class GetFirstAidErrorState extends DoctorScreenState {}

class PickUserImage extends DoctorScreenState {}

class EditUserProfileLoading extends DoctorScreenState {}

class EditUserProfileSuccess extends DoctorScreenState {}

class EditUserProfileError extends DoctorScreenState {
  final String msg;

  EditUserProfileError(this.msg);
}
