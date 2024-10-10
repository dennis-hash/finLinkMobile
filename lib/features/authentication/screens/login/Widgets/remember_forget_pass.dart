import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../../../../../utils/constants/text_strings.dart';
import '../../../controllers/login_controller/login_controller.dart';
import '../../password_configuration/forget_password.dart';


class RememberAndForgetPass extends StatelessWidget {
  const RememberAndForgetPass({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = LoginController.instance;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween, //add space between rememebr me and forget pasword
      children: [
        ///Remember me
        Row(
          children: [
            Obx(() => Checkbox(
              value: controller.rememberMe.value,
              onChanged: (value) => controller.rememberMe.value = !controller.rememberMe.value,
            ),),
            const Text(TTexts.rememberMe),
          ],
        ),
        ///forget password
        TextButton(onPressed: () => Get.to(()=>const ForgetPassword()), child: const Text(TTexts.forgetPassword)),
      ],
    );
  }
}