import 'package:apis/data/local_database.dart';
import 'package:apis/utlies/all_service_intilizer.dart';

import 'package:apis/utlies/my_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:shared_preferences/shared_preferences.dart';

late SharedPreferences sharedPreferences;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //Load APIkey from .env file
  await dotenv.load(fileName: "assets/config/.env");
  // initilized SharedPreferences
  sharedPreferences = await SharedPreferences.getInstance();
  //initilized App services
  await initServices();
  //Save data from the the API in the Local Database
  LocalStorage().saveAppData();
  runApp(const MyApp());
}
