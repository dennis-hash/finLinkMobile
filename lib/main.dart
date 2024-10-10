import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get_storage/get_storage.dart';

import 'app.dart';
import 'data/repository/authentication/authentication_repo.dart';

Future<void> main() async {
  //Add widget binding
  final WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  //GETX nit local storage
  await GetStorage.init();

  //TODO: await native splash
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  //TODO: initialize firebase
  // await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
  //     .then(
  //       (FirebaseApp value) => Get.put(AuthenticationRepository()),
  // );

  Get.put(AuthenticationRepository());

  //TODO: initialize authenticatio




  runApp(const MainApp());
}


