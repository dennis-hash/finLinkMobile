
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:shared_preferences/shared_preferences.dart';



import '../../../../data/repository/authentication/verify_phone_repo.dart';
import '../../../../utils/popups/loaders.dart';

import '../../screens/setPassword/set_password.dart';


class VerifyPhoneController extends GetxController {
    static VerifyPhoneController get instance => Get.find();

    final otp1 = TextEditingController();
    final otp2 = TextEditingController();
    final otp3 = TextEditingController();
    final otp4 = TextEditingController();
    GlobalKey<FormState> verifyKey = GlobalKey<
        FormState>();

    //shared preference to store user and token
    final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();


    verifyPhone() async {
       try{
            //form validation
            // if (!verifyKey.currentState!.validate()) {
            //     TLoaders.warningSnackBar(title: 'Error', message: 'Please fill all the required fields');
            //     return;
            // }
            //
            // final SharedPreferences prefs = await SharedPreferences.getInstance();
            // String phoneNumber = prefs.getString('phoneNumber') ?? "";
            //
            // String otp = otp1.text + otp2.text + otp3.text + otp4.text;
            //
            // Map<String, String> phoneNumberOtpMap = {
            //     'phoneNumber': phoneNumber,
            //     'otp': otp,
            // };
            //
            // final verifyResponse = await VerifyRepo.instance.verify(phoneNumberOtpMap);
            //
            // final responseBody = json.decode(verifyResponse.body);
            //
            // if(verifyResponse.statusCode == 201){

                Get.to(()=>const SetPassword());
            // }else{
            //     TLoaders.warningSnackBar(title: 'Error', message: responseBody['message'] ?? 'Unknown error occurred');
            // }


        }catch(e){
           print(e.toString());
        }

    }

}