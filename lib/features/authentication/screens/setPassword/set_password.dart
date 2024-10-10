import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/rounded_container.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../../../utils/validators/validation.dart';
import '../../controllers/set_pass_contr/set_pass_contr.dart';
import '../../controllers/signup_controler/signup_controller.dart';
import '../login/login.dart';

class SetPassword extends StatelessWidget {
  const SetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SetPassController());
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
                'Create Your Password',
                style: Theme.of(context).textTheme.headlineMedium,
              ),

              const SizedBox(
                height: TSizes.spaceBtwItems / 2,
              ),

              RoundedContainer(
                width:double.maxFinite,
                height: 90,
                showBorder: false,
                radius: TSizes.borderRadiusLg,
                backgroundColor: Colors.greenAccent.shade100,
                padding: const EdgeInsets.all(TSizes.sm),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Text('Password should contain:', style: Theme.of(context).textTheme.titleMedium!.apply(color: TColors.darkGreen)),
                    Text('At least 6 characters', style: Theme.of(context).textTheme.bodySmall!.apply(color: TColors.darkGreen)),
                    Text('At least one uppercase letter', style: Theme.of(context).textTheme.bodySmall!.apply(color: TColors.darkGreen)),
                    Text('At least special character', style: Theme.of(context).textTheme.bodySmall!.apply(color: TColors.darkGreen)),
                  ],
                ),

              ),

              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),

              Form(
                key: controller.setPassFormKey,
                  child: Column(
                    children: [
                      Obx(
                            () => TextFormField(
                            validator: (value) => TValidator.validatePassword(value),
                            controller: controller.password,
                            obscureText: controller.hidePassword.value,
                            decoration: InputDecoration(
                                labelText: TTexts.password,
                                prefixIcon: const  Icon(Iconsax.password_check),
                                suffixIcon: IconButton(
                                  onPressed: () => controller.hidePassword.value = !controller.hidePassword.value,
                                  icon: Icon(controller.hidePassword.value ? Iconsax.eye_slash : Iconsax.eye),
                                )
                            )

                        ),
                      ),
                      const SizedBox( height: TSizes.spaceBtwInputFields,),
                      Obx(
                            () => TextFormField(
                            controller: controller.confirmPassword,
                                validator: (value) {
                                  if (value != controller.password.text) {
                                    return 'Passwords do not match';
                                  }
                                  return null;
                                },
                            obscureText: controller.hidePassword.value,
                            decoration: InputDecoration(
                                labelText: 'Confirm password',
                                prefixIcon: const  Icon(Iconsax.password_check),
                                suffixIcon: IconButton(
                                  onPressed: () => controller.hidePassword.value = !controller.hidePassword.value,
                                  icon: Icon(controller.hidePassword.value ? Iconsax.eye_slash : Iconsax.eye),
                                )
                            )

                        ),
                      ),

                      const SizedBox( height: TSizes.spaceBtwSections,),
                      ///signup button
                      SizedBox(width: double.infinity,child: ElevatedButton(onPressed: () => controller.setPass(), child:const Text('Submit'))),


                    ],
                  )
              ),
            ],
          ),
        ),
      ),

    );
  }
}

class SSetPassController {
}
