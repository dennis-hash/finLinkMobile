import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';

import 'package:get_storage/get_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

import '../../../features/authentication/screens/login/login.dart';
import '../../../features/authentication/screens/onboarding/onboarding.dart';
import '../../../utils/constants/api_constants.dart';
import '../../../utils/popups/loaders.dart';

class AuthenticationRepository extends GetxController{

  static AuthenticationRepository get instance => Get.find();

  late final String phoneNumber;
  late final String  username;

  //variables
  final deviceStorage = GetStorage();

  @override
  void onReady(){
    FlutterNativeSplash.remove();
    screenRedirect();
  }


  screenRedirect() async{

    // deviceStorage.writeIfNull('isFirstTime', true);
    //
    // SharedPreferences prefs = await SharedPreferences.getInstance();
    // String? token = prefs.getString('token');
    //
    //
    // if (token != null) {
    //   //Get.offAll(() => const SitePage());
    //   //Get.offAll(() => const SitePage());
    //   phoneNumber = prefs.getString('phoneNumber') ?? "";
    //   username = prefs.getString('name') ?? '';
    //
    // } else {
    //   deviceStorage.read('isFirstTime') != true ? Get.offAll(() => const LoginScreen()) : Get.offAll(const OnBoardingScreen());
    // }

    Get.offAll(const OnBoardingScreen());
  }

  ///registration
  Future register (Map<String, dynamic> newUser) async {

    try{
      debugPrint('New User: $newUser');

      final response = await http.post(
        Uri.parse('${url}register' ),
        headers: {'Accept': 'application/json'},
        body: newUser,
      );

      return response;

    }catch(e){

      debugPrint(e.toString());
      TLoaders.errorSnackBar(title: 'Oh Snap', message: e.toString());

    }
  }

  Future login (Map<String, String>loginMap) async {
    try{
      final response = await http.post(
        Uri.parse('${url}login'),
        headers: {'Accept': 'application/json'},
        body: loginMap,
      );

      return response;

    }catch(e){
      debugPrint(e.toString());
      TLoaders.errorSnackBar(title: 'Oh Snap', message: 'Failed to connect to server');
    }
  }

}

