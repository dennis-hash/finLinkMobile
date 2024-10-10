import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';


import '../../../../data/models/user_model.dart';
import '../../../../data/repository/authentication/authentication_repo.dart';
import '../../../../utils/constants/api_constants.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/helpers/network_manager.dart';
import '../../../../utils/popups/full_screen_loader.dart';
import '../../../../utils/popups/loaders.dart';
import '../../screens/sign_up/verify_email.dart';


class SingUpController extends GetxController {

  static SingUpController get instance => Get.find();

  ///variable
  final privacyPolicy = true.obs;
  final hidePassword = true.obs;
  final email = TextEditingController();
  final lastName = TextEditingController();
  final username = TextEditingController();
  final password = TextEditingController();
  final firstName = TextEditingController();
  final phoneNumber = TextEditingController();
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>(); //FORM KEY FOR validation

  //shared preference to store user and token
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();



  signup() async {
    try {

      //check privacy policy
      if (!privacyPolicy.value) {
        TLoaders.warningSnackBar(title: 'Accept privacy policy',
            message: 'In order to create an account, you need to read and accept the Privacy policy & Terms of Use.');
        return;
      }

      //Start loading
      TFullScreenLoader.openLoadingDialog('We are processing your information ...', TImages.docerAnimation);

      //check for internet connection
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        TLoaders.warningSnackBar(title: 'Error', message: 'Check your internet connection');
        TFullScreenLoader.stopLoading();
        return;
      }

      //form validation
      if (!signupFormKey.currentState!.validate()) {
        TFullScreenLoader.stopLoading();
        return;
      }

      //
      //


      UserModel newUser = UserModel(
          firstName: firstName.text.trim(),
          lastName: lastName.text.trim(),
          email: email.text.trim(),
          phoneNumber: phoneNumber.text.trim(),
          profilePicture: 'null'
      );

      Map<String, dynamic> user = newUser.toJson();

      //register user  & save user data
      final regResponse = await AuthenticationRepository.instance.register(user);

      final responseBody = json.decode(regResponse.body);

      if(regResponse.statusCode == 201){
        ///stop loading
        TFullScreenLoader.stopLoading();


        String message = responseBody['message'];

        final SharedPreferences prefs = await _prefs;
        await prefs.setString('phoneNumber', phoneNumber.text.trim());


        //move to verify email
        Get.to(() => VerifyPhoneForm(message: message,));

      }else if(regResponse.statusCode == 422){

        Map<String, dynamic> errors = responseBody['errors'];
        String allErrorMessages = '';

        errors.forEach((field, errorMessages){
          List<String> messages = List<String>.from(errorMessages);

          for (var message in messages) {
            allErrorMessages += '$message\n';
          }
        });
        TFullScreenLoader.stopLoading();
        TLoaders.warningSnackBar(title: 'Error', message: allErrorMessages);
      }else{
        TFullScreenLoader.stopLoading();
        TLoaders.warningSnackBar(title: 'Error', message: responseBody['message'] ?? 'Unknown error occurred');
      }


    } catch (e) {

      TLoaders.errorSnackBar(title: 'Oh Snap', message: e.toString());
      TFullScreenLoader.stopLoading();

    }
  }


}
