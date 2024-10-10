import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../data/repository/authentication/authentication_repo.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/helpers/network_manager.dart';
import '../../../../utils/popups/full_screen_loader.dart';
import '../../../../utils/popups/loaders.dart';

class LoginController extends GetxController{
  static LoginController get instance => Get.find();

  final rememberMe = true.obs;
  final hidePassword = true.obs;
  final phoneNumber = TextEditingController();
  final password = TextEditingController();
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  login() async{
    // try{
    //
    //   //check for internet connectio
    //   final isConnected = await NetworkManager.instance.isConnected();
    //   if (!isConnected) {
    //     TLoaders.warningSnackBar(title: 'Error', message: 'Check your internet connection');
    //     TFullScreenLoader.stopLoading();
    //     return;
    //   }
    //
    //   if (!loginFormKey.currentState!.validate()) {
    //     TLoaders.warningSnackBar(title: 'Error', message: 'Please fill all the required fields');
    //     return;
    //   }
    //
    //   //Start loading
    //   TFullScreenLoader.openLoadingDialog('Login in ...', TImages.docerAnimation);
    //
    //
    //   Map<String, String> loginMap = {
    //     'phoneNumber' : phoneNumber.text.trim(),
    //     'password': password.text,
    //   };
    //
    //   final response = await AuthenticationRepository.instance.login(loginMap);
    //   final responseBody = json.decode(response.body);
    //
    //   print(responseBody);
    //
    //   if (response.statusCode == 200){
    //     final SharedPreferences prefs = await _prefs;
    //     await prefs.setInt('userId', responseBody['siteManager']['siteManagerId']);
    //     await prefs.setString('token', responseBody['token']);
    //     await prefs.setString('name', responseBody['siteManager']['name']);
    //     await prefs.setString('email', responseBody['siteManager']['email']);
    //     await prefs.setString('phoneNumber', responseBody['siteManager']['phoneNumber']);
    //     //await prefs.setString('profilePic', responseBody['siteManager']['profilePic']);
    //
    //     //Get.to(()=>const SitePage());
    //   }else{
    //     TFullScreenLoader.stopLoading();
    //     TLoaders.warningSnackBar(title: 'Error', message: responseBody['message'] ?? 'Unknown error occurred');
    //     return;
    //   }
    //
    //
    // }catch(e){
    //   TFullScreenLoader.stopLoading();
    //   print(e.toString());
    //   TLoaders.errorSnackBar(title: 'Oh Snap', message: e.toString());
    // }


  }

}