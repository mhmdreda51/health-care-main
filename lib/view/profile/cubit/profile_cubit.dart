import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

import '../../../data/home_apis.dart';
import '../../../models/user_model.dart';

part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit() : super(ProfileInitial());
  static ProfileCubit get(context) => BlocProvider.of(context);
  initProfleScreen() {
    emit(ProfileScreenInitial());
  }

  File? userimage;

  ImagePicker? imagePicker;

  void pickImageFromGallery() async {
    final ImagePicker picker = ImagePicker();
    final imageFile = await picker.pickImage(source: ImageSource.gallery);
    if (imageFile == null) return;
    userimage = File(imageFile.path);
    emit(PickUserImage());
  }

  HomeApis homeApis = HomeApis();
  Future editUserProfile({
    File? image,
    String? firstName,
    String? lastName,
    String? age,
    String? phoneNum,
    required int userId,
  }) async {
    emit(EditUserProfileLoading());
    final res = await homeApis.editUserData(
      age: age,
      firstName: firstName,
      lastName: lastName,
      phoneNum: phoneNum,
      userId: userId,
      image: image,
    );
    if (res is EditUserModel) {
      emit(EditUserProfileSuccess());
    } else {
      emit(EditUserProfileError(res.toString()));
      log(res.toString());
    }
  }
}
