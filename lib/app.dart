import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:mcrypto/utils/constants/colors.dart';
import 'package:mcrypto/utils/theme/theme.dart';

import 'bindings/general_bindings.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
        themeMode: ThemeMode.system,
        debugShowCheckedModeBanner: false,
        theme: TAppTheme.lightTheme,
        //darkTheme: TAppTheme.darkTheme,
        //home: const OnBoardingScreen(),
        initialBinding: GeneralBindings(),
        home: const Scaffold(backgroundColor: TColors.primary, body: Center( child: CircularProgressIndicator(color: Colors.white,),),)

    );
  }
}