
import 'package:flutter/material.dart';



import 'package:get/get.dart';

import 'package:iconsax/iconsax.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:mcrypto/features/authentication/screens/sign_up/verify_email.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../../../utils/validators/validation.dart';
import '../../controllers/signup_controler/signup_controller.dart';
import '../login/Widgets/form_divider.dart';
import '../login/Widgets/google_button.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    final controller = Get.put(SingUpController());
    final controller2 = SingUpController.instance;


    controller.firstName.addListener(() {
      updateUsername(controller);
    });

    controller.lastName.addListener(() {
      updateUsername(controller);
    });


    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 20,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                TTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              Form(
                key: controller.signupFormKey,
                  child: Column(
                children: [
                  ///two text fields in the same row
                  // Row(
                  //   children: [
                  //     Expanded(
                  //       child: TextFormField(
                  //         controller: controller.firstName,
                  //           validator: (value) => TValidator.validateEmptyText('First name', value),
                  //           expands: false,
                  //           decoration: const InputDecoration(
                  //               labelText: TTexts.firstName,
                  //               prefixIcon: Icon(Iconsax.user))),
                  //     ),
                  //     const SizedBox(
                  //       width: TSizes.spaceBtwInputFields ,
                  //     ),
                  //     Expanded(
                  //       child: TextFormField(
                  //           controller: controller.lastName,
                  //           validator: (value) => TValidator.validateEmptyText('Last name', value),
                  //           expands: false,
                  //           decoration: const InputDecoration(
                  //               labelText: TTexts.lastName,
                  //               prefixIcon: Icon(Iconsax.user))),
                  //     )
                  //   ],
                  // ),
                  //const SizedBox( height: TSizes.spaceBtwInputFields,),
                  ///username
                  // TextFormField(
                  //     controller: controller.username,
                  //     validator: (value) => TValidator.validateEmptyText('Username', value),
                  //     expands: false,
                  //     enabled: false,
                  //     decoration: const InputDecoration(
                  //         labelText: TTexts.username,
                  //         prefixIcon: Icon(Iconsax.user_edit))
                  // ),

                  //const SizedBox( height: TSizes.spaceBtwInputFields,),

                  ///email
                  // TextFormField(
                  //     controller: controller.email,
                  //     validator: (value) => TValidator.validateEmail(value),
                  //     decoration: const InputDecoration(
                  //         labelText: TTexts.email,
                  //         prefixIcon: Icon(Iconsax.direct))
                  // ),
                  //const SizedBox( height: TSizes.spaceBtwInputFields,),
                  IntlPhoneField(
                    controller: controller.phoneNumber,
                    validator: (value) => TValidator.validatePhoneNumber(value as String?),
                    keyboardType: TextInputType.phone,
                    initialCountryCode: 'KE',
                  ),
                  ////phone number
                  // TextFormField(
                  //     controller: controller.phoneNumber,
                  //     validator: (value) => TValidator.validatePhoneNumber(value),
                  //     decoration: const InputDecoration(
                  //
                  //         labelText: TTexts.phoneNo,
                  //         prefixIcon: Icon(Iconsax.call))
                  // ),

                  //const SizedBox( height: TSizes.spaceBtwSections,),
                  ///Terms and conditions checkbox
                  Row(
                    children: [
                      SizedBox(
                          width:24,
                          height:24,
                          child: Obx (
                              ()=> Checkbox(
                                  value: controller2.privacyPolicy.value,
                                  onChanged: (value) => controller2.privacyPolicy.value = !controller2.privacyPolicy.value,
                              ))),
                      Text.rich(
                          TextSpan(
                        children: [
                          TextSpan(text: '${TTexts.iAgreeTo} ', style: Theme.of(context).textTheme.bodySmall),
                          TextSpan(text: TTexts.privacyPolicy, style: Theme.of(context).textTheme.bodyMedium!.apply(
                            color: dark ? TColors.white: TColors.primary,
                            decoration: TextDecoration.underline,
                            decorationColor: dark ? TColors.white:TColors.primary
                          )),
                          TextSpan(text: ' ${TTexts.and} ', style: Theme.of(context).textTheme.bodySmall),
                          TextSpan(text: TTexts.termsOfUse, style: Theme.of(context).textTheme.bodyMedium!.apply(
                              color: dark ? TColors.white: TColors.primary,
                              decoration: TextDecoration.underline,
                              decorationColor: dark ? TColors.white:TColors.primary
                          )),
                        ]
                      ))
                    ],
                  ),
                  const SizedBox( height: TSizes.spaceBtwSections,),
                  ///signup button
                  SizedBox(width: double.infinity,child: ElevatedButton(onPressed: () {
                    //Get.to(() => VerifyPhoneForm(message: 'fff',));
                    //controller.signup()

                    //show bottom sheet
                    showModalBottomSheet(
                        context: context,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
                        ),
                        showDragHandle: false,
                        isScrollControlled: true,
                        //isDismissible: false,
                        builder: (BuildContext context){
                          return Container(height:MediaQuery.of(context).size.height * 0.75,child: VerifyPhoneForm(message: controller.phoneNumber.text.toString(),));
                        }
                    );


                  }

                      , child:const Text(TTexts.createAccount))
                  ),

                  const SizedBox(height: TSizes.spaceBtwItemsss),
                  ///divider
                  // const FormDivider(Ttext: TTexts.orSignInWith),
                  //
                  // const SizedBox(height: TSizes.spaceBtwItemsss),
                  //
                  // ///social button
                  // const GoogleSignInButton()

                ],
              ))
            ],
          ),
        ),
      ),
    );
  }

  void updateUsername(SingUpController controller) {
    String firstName = controller.firstName.text.trim();
    String lastName = controller.lastName.text.trim();

    // Concatenate firstName and lastName to set the value of the username field
    controller.username.text = '$firstName $lastName';
  }
}
