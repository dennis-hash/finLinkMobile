import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:http/http.dart' as http;

import '../../../utils/constants/api_constants.dart';
import '../../../utils/popups/loaders.dart';

class SetPassRepo extends GetxController {
  static SetPassRepo get instance => Get.put(SetPassRepo());

  Future set(Map<String, dynamic> setPassData) async {
    try{

      final response = await http.post(
        Uri.parse('${url}setPassword' ),
        headers: {'Accept': 'application/json'},
        body: setPassData,
      );

      return response;

    }catch(e){
      debugPrint(e.toString());
      TLoaders.errorSnackBar(title: 'Oh Snap', message: e.toString());

    }
  }


}