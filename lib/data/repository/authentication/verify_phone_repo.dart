import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:http/http.dart' as http;

import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../../utils/constants/api_constants.dart';
import '../../../utils/popups/loaders.dart';

class VerifyRepo extends GetxController {

  static VerifyRepo get instance => Get.put(VerifyRepo());

  //verify phone number
  Future verify(Map<String, dynamic> verifyData) async {
    try{

      final response = await http.post(
        Uri.parse('${url}verify' ),
        headers: {'Accept': 'application/json'},
        body: verifyData,
      );

      return response;

    }catch(e){
      debugPrint(e.toString());
      TLoaders.errorSnackBar(title: 'Oh Snap', message: 'Error connecting to server');

    }
  }
}