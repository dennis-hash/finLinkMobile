import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../../../utils/helpers/helper_functions.dart';
import 'Widgets/form_divider.dart';
import 'Widgets/google_button.dart';
import 'Widgets/login_form.dart';
import 'Widgets/login_header.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    //FocusScope.of(context).unfocus();

    return  const Scaffold(
      body: SingleChildScrollView( //make it scrollable for smaller screens
        child: Padding(
          padding: EdgeInsets.only(
            top: TSizes.appBarHeight,
            left: TSizes.defaultSpace,
            bottom: TSizes.defaultSpace,
            right: TSizes.defaultSpace
          ),
          child: Column(
            children: [
              ///Logo title and subtitle
              TLoginHeader(),

              ///Form
              LoginForm(),
              ///divider
               FormDivider(Ttext: TTexts.orSignInWith),
              
              SizedBox(height: TSizes.spaceBtwItemsss),
              ///Footer
              GoogleSignInButton()

            ],

          ),
        ),

      ),

    );
  }
}






