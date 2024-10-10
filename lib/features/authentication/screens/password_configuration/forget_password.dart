import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mcrypto/features/authentication/screens/password_configuration/reset_password.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import '../login/login.dart';
import '../success_screens/success_screen.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () => Get.offAll(()=>const LoginScreen()), icon: const Icon(CupertinoIcons.clear))
        ],
      ),

      body: SingleChildScrollView(

        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(

            children: [
              Text(TTexts.forgetPasswordTitle, style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.start,),
              const SizedBox(height: TSizes.spaceBtwItems),
              Text(TTexts.forgetPasswordSubTitle, style: Theme.of(context).textTheme.labelMedium ,textAlign: TextAlign.start,),
              const SizedBox(height: TSizes.spaceBtwSections),
              ///email
              TextFormField(
                  decoration: const InputDecoration(
                      labelText: TTexts.email,
                      prefixIcon: Icon(Iconsax.direct_right))
              ),
              const SizedBox(height: TSizes.spaceBtwItems),
              SizedBox(width: double.infinity,child: ElevatedButton(onPressed: () => Get.off(()=>const ResetPassword()), child:const Text(TTexts.submit))),
            ],

          ),

        ),

      ),

    );
  }
}
