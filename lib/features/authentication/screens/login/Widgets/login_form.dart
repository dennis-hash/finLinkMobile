import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mcrypto/features/authentication/screens/login/Widgets/remember_forget_pass.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/validators/validation.dart';
import '../../../controllers/login_controller/login_controller.dart';
import '../../sign_up/signup.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());

    return Form(
      key: controller.loginFormKey,
      child: Padding(
      padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
      child: Column(
        children: [
          ///Email
          // TextFormField(
          //   controller: controller.phoneNumber,
          //   validator: (value) => TValidator.validateEmptyText('Phone Number', value),
          //   decoration: const InputDecoration(
          //     prefixIcon: Icon(Iconsax.call),
          //     labelText: TTexts.phoneNo,
          //   ),
          //   keyboardType: TextInputType.number,
          //   inputFormatters: [
          //     FilteringTextInputFormatter.digitsOnly
          //   ],
          // ),
          // const SizedBox(height: TSizes.spaceBtwInputFields),
          Obx(
                () => TextFormField(
                    validator: (value) => TValidator.validateEmptyText('Password', value),
                controller: controller.password,
                obscureText: controller.hidePassword.value,
                decoration: InputDecoration(
                    labelText: TTexts.password,
                    prefixIcon: const  Icon(Iconsax.password_check),
                    suffixIcon: IconButton(
                      onPressed: () => controller.hidePassword.value = !controller.hidePassword.value,
                      icon: Icon(controller.hidePassword.value ? Iconsax.eye_slash : Iconsax.eye),
                    )
                ),


            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields / 2),

          ///Remember me and forget password
          const RememberAndForgetPass(),

          const SizedBox(height: TSizes.spaceBtwItemsss),
          ///Sign in button
          SizedBox(width: double.infinity,child: ElevatedButton(onPressed: () => Get.to(controller.login()), child:const Text(TTexts.signIn))),
          const SizedBox(height: TSizes.spaceBtwItems),
          ///create account
          SizedBox(width: double.infinity,child: OutlinedButton(onPressed: () => Get.to(() => const SignUpScreen()), child:const Text(TTexts.createAccount)))

        ],

      ),
    ),
    );
  }
}