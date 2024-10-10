import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../../../utils/validators/validation.dart';
import '../../controllers/verify_phone/verify_phone_controller.dart';
import '../login/login.dart';
import '../success_screens/success_screen.dart';

class VerifyPhoneForm extends StatelessWidget {
  const VerifyPhoneForm({super.key, required this.message});


  final String message;

  @override
  Widget build(BuildContext context) {

    final controller = Get.put(VerifyPhoneController());


    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              Text('Please verify your phone number', style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
              const SizedBox(height: TSizes.spaceBtwItems / 2),
              Text( 'A 4 digit OTP has been sent to $message',
                style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center, ),
              Text.rich(
              TextSpan(
                recognizer: TapGestureRecognizer()..onTap = () {

                  Navigator.pop(context);
                  },
                  text: 'Change Phone Number', style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color:  TColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: TColors.primary,
                  )),

              ),
              const SizedBox(height: TSizes.spaceBtwItems),
              Form(
                key: controller.verifyKey,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: controller.otp1,
                        validator: (value) => TValidator.validateEmptyOTP(value),
                        onChanged: (value){
                          if(value.length == 1){
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        style: Theme.of(context).textTheme.headlineSmall,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                    const SizedBox(width: TSizes.spaceBtwItems / 2),
                    Expanded(
                      child: TextFormField(
                        controller: controller.otp2,
                        validator: (value) => TValidator.validateEmptyOTP(value),
                        onChanged: (value){
                          if(value.length == 1){
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        style: Theme.of(context).textTheme.headlineSmall,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                    const SizedBox(width: TSizes.spaceBtwItems / 2),
                    Expanded(
                      child: TextFormField(
                        controller: controller.otp3,
                        validator: (value) => TValidator.validateEmptyOTP(value),
                        onChanged: (value){
                          if(value.length == 1){
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        style: Theme.of(context).textTheme.headlineSmall,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                    const SizedBox(width: TSizes.spaceBtwItems / 2),
                    Expanded(
                      child: TextFormField(
                        controller: controller.otp4,
                        validator: (value) => TValidator.validateEmptyOTP(value),
                        onChanged: (value){
                          if(value.length == 1){
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        style: Theme.of(context).textTheme.headlineSmall,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                
                  ],
                ),
              ),
              const SizedBox(height: TSizes.spaceBtwItems),


              const SizedBox(height: TSizes.spaceBtwSections),
              SizedBox(width: double.infinity,child: ElevatedButton(onPressed: () => controller.verifyPhone(), child:const Text(TTexts.tContinue))),
              const SizedBox(height: TSizes.spaceBtwSections),
              SizedBox(width: double.infinity,child: TextButton(onPressed: () {}, child:const Text('Resend Code'))),

            ],

          ),

        ),

      ),

    );
  }
}
