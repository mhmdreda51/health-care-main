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

  XFile? userimage;

  ImagePicker? imagePicker;
  GlobalKey<FormState> profileFormKey = GlobalKey<FormState>();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController disaeseTypeController = TextEditingController();
  TextEditingController disaeseDiscController = TextEditingController();

  void pickImageFromGallery() async {
    final ImagePicker picker = ImagePicker();
    final imageFile = await picker.pickImage(source: ImageSource.gallery);
    if (imageFile == null) return;
    userimage = imageFile;
    emit(PickUserImage());
  }

  HomeApis homeApis = HomeApis();
  EditUserModel? editUserModel;
  Future editUserProfile({
    File? image,
    required String firstName,
    required String lastName,
    required String age,
    required String phoneNum,
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
      editUserModel = res;
      emit(EditUserProfileSuccess());
    } else {
      emit(EditUserProfileError(res.toString()));
      log(res.toString());
    }
  }
}
