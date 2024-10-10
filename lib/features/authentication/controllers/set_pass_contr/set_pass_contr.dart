import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../data/repository/authentication/set_pass_repo.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/helpers/network_manager.dart';
import '../../../../utils/popups/full_screen_loader.dart';
import '../../../../utils/popups/loaders.dart';
import '../../screens/login/login.dart';
import '../../screens/success_screens/success_screen.dart';

class SetPassController extends GetxController{
  static SetPassController get instance => Get.find();
  final password = TextEditingController();
  final confirmPassword = TextEditingController();
  final hidePassword = true.obs;
  GlobalKey<FormState> setPassFormKey = GlobalKey<
      FormState>();

  //shared preference to store user and token
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();


  setPass() async{
    try{
      // //Start loading
      // TFullScreenLoader.openLoadingDialog('We are processing your information ...', TImages.docerAnimation);
      //
      // //check for internet connection
      // final isConnected = await NetworkManager.instance.isConnected();
      // if (!isConnected) {
      //   TLoaders.warningSnackBar(title: 'Error', message: 'Check your internet connection');
      //   TFullScreenLoader.stopLoading();
      //   return;
      // }
      //
      // //form validation
      // if (!setPassFormKey.currentState!.validate()) {
      //   TFullScreenLoader.stopLoading();
      //   return;
      // }
      // final SharedPreferences prefs = await SharedPreferences.getInstance();
      // String phoneNumber = prefs.getString('phoneNumber') ?? "";
      //
      //
      // Map<String, String> passMap = {
      //   "phoneNumber":phoneNumber,
      //   "password":password.text.trim(),
      // };
      //
      // final response = await SetPassRepo.instance.set(passMap);
      //
      // final responseBody = json.decode(response.body);
      //
      // if(response.statusCode == 201){
      //   TFullScreenLoader.stopLoading();
        Get.to(()=> SuccessScreen(title: 'Account created successfully', subTitle: 'Welcome to finLink!',onPressed: () => Get.to(() => const LoginScreen())));
      // }else{
      //   TFullScreenLoader.stopLoading();
      //   TLoaders.warningSnackBar(title: 'Error', message: responseBody['message'] ?? 'Unknown error occurred');
      // }

    }
    catch(e){
      TLoaders.errorSnackBar(title: 'Oh Snap', message: e.toString());
      TFullScreenLoader.stopLoading();
    }

  }


}