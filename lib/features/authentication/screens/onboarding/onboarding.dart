
import 'package:flutter/material.dart';

import 'package:get/get.dart';


import '../../../../utils/constants/image_strings.dart';
import '../../controllers/onboarding/onboarding_controller.dart';
import '../../controllers/onboarding/widgets/onboarding_dot_navigation.dart';
import '../../controllers/onboarding/widgets/onboarding_next_button.dart';
import '../../controllers/onboarding/widgets/onboarding_page.dart';
import '../../controllers/onboarding/widgets/onboarding_skip.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          ///horizontal scrollable pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(image: TImages.onBoardingImage1,title:  'Effortless Crypto to Cash',subTitle:  "Convert crypto to local currency and send it instantly to mobile wallets or banks."),
              OnBoardingPage(image: TImages.onBoardingImage2,title:  'Simple and Fast Transfers',subTitle:  "Choose your wallet, enter the phone number, and send in seconds."),
              //OnBoardingPage(image: TImages.onBoardingImage3,title:  "Build Smarter, Together",subTitle:  "Experience a more efficient and collaborative construction process with SITE MANAGER. Let's get started!"),
            ],
          ),

          ///skip button
          // const OnBoardingSkip(),

          ///Dot navigation smoothpage
          const OnBoardingDotNavigation(),

          ///circular button
          const OnBoardingNextButton()
        ],
      ),
    );
  }
}






