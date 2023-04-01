part of 'profile_cubit.dart';

@immutable
abstract class ProfileState {}

class ProfileInitial extends ProfileState {}
class ProfileScreenInitial extends ProfileState {}

class PickUserImage extends ProfileState {}

class EditUserProfileLoading extends ProfileState {}

class EditUserProfileSuccess extends ProfileState {}

class EditUserProfileError extends ProfileState {
  final String msg;

  EditUserProfileError(this.msg);
}
