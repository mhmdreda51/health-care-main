import 'dart:developer';

import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/cacheHelper/cache_helper.dart';
import '../../../data/auth_apis.dart';
import '../../../models/register_model.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());
  static RegisterCubit get(context) => BlocProvider.of(context);
  bool isPassword = true;
  TextEditingController userNAmeController = TextEditingController();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> registerFormKey = GlobalKey<FormState>();
  IconData suffix = Icons.visibility_outlined;

  void changePasswordVisibility() {
    isPassword = !isPassword;
    suffix =
        isPassword ? Icons.visibility_outlined : Icons.visibility_off_outlined;
    emit(SignUpChangePasswordVisibilityState());
  }

  AuthApis authApis = AuthApis();
  RegisterModel? registerModel;
  Future register({
    required String email,
    required String username,
    required String password,
  }) async {
    emit(RegisterLoadingState());
    try {
      final res = await authApis.registerAccount(
        userName: username,
        password: password,
        email: email,
      );
      if (res is RegisterModel) {
        CacheHelper.cacheUserInfo(token: registerModel?.token ?? "");
        BotToast.showText(text: "register Success as ${res.user?.username}");
        emit(RegisterSuccessState());
      } else {
        log(res.toString());
        BotToast.showText(text: res.toString());
        emit(RegisterErrorState());
      }
    } catch (e) {
      emit(RegisterErrorState());
      log(e.toString());
    }
  }
}
