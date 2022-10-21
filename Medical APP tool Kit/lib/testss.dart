

// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';

// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:http/http.dart' as http;
// import 'package:workmanager/workmanager.dart';

// // String Api_Address = "https://cybernsoft.com/api/";
// // String Logo2 = "assets/Logo2.png";

// //this is the name given to the background fetch
// const simplePeriodicTask = "simplePeriodicTask";
// const generalPeriodicTask = "generalPeriodicTask";

// // flutter local notification setup

// void show_Tanker_Notification(v, flp) async {
//   var android = AndroidNotificationDetails('channel id', 'channel NAME',
//       //  'CHANNEL DESCRIPTION',
//       priority: Priority.high,
//       importance: Importance.max);
//   var iOS = IOSNotificationDetails();
//   var platform = NotificationDetails(android: android, iOS: iOS);

//   await flp.show(0, 'WMS Water Tanker', '$v', platform, payload: 'VIS \n $v');
// }

// void show_Maintenance_Notification(v, flp) async {
//   var android = AndroidNotificationDetails("2", '3',
//       //  'CHANNEL DESCRIPTION',
//       priority: Priority.high,
//       importance: Importance.max);
//   var iOS = IOSNotificationDetails();
//   var platform = NotificationDetails(android: android, iOS: iOS);
//   // FlutterLocalNotificationsPlugin().show(3, "saima", "$v", platform, payload:)
//   await flp.show(2, 'WMS Maintenance', '$v', platform, payload: 'VIS \n $v');
// }

// void show_General_Notification(v, flp) async {
//   var android = AndroidNotificationDetails('channel id', 'channel NAME',
//       //  'CHANNEL DESCRIPTION',
//       priority: Priority.high,
//       importance: Importance.max);
//   var iOS = IOSNotificationDetails();
//   var platform = NotificationDetails(android: android, iOS: iOS);

//   await flp.show(3, 'WMS', '$v', platform, payload: 'VIS \n $v');
// }

// void show_BroadCast_Notification(v, flp) async {
//   var android = AndroidNotificationDetails('channel id', 'channel NAME',
//       //  'CHANNEL DESCRIPTION',
//       priority: Priority.high,
//       importance: Importance.max);
//   var iOS = IOSNotificationDetails();
//   var platform = NotificationDetails(android: android, iOS: iOS);

//   await flp.show(4, 'WMS', '$v', platform, payload: 'VIS \n $v');
// }

// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();

//   await Workmanager().initialize(callbackDispatcher, isInDebugMode: false);

// // await Workmanager().initialize(callbackDispatcher_General,isInDebugMode: true);

// //  , isInDebugMode: true); //to true if still in testing lev turn it to false whenever you are launching the app
//   await Workmanager().registerPeriodicTask("5", simplePeriodicTask,
//       existingWorkPolicy: ExistingWorkPolicy.replace,
//       frequency: const Duration(minutes: 15), //when should it check the link
//       initialDelay:
//           Duration(seconds: 5), //duration before showing the notification
//       constraints: Constraints(
//         networkType: NetworkType.connected,
     
      
//       ));

//   //remove
//   // SharedPreferences pref = await SharedPreferences.getInstance();
//   // User_Login_id_S = pref.getString("User_Login_Id");
//   // print("${User_Login_id_S} User id shared pref");

//   //for viewing only in portrait mode
//   SystemChrome.setPreferredOrientations([
//     DeviceOrientation.portraitUp,
//   ]);
//   runApp(const MyApp());
// }

// // notification api function
// Future<void> callbackDispatcher() async {

// await Shared_Pref_Login_Id_Func();

//   int notification_count = 0;
//   Workmanager().executeTask((task, inputData) async {
//     FlutterLocalNotificationsPlugin flp = FlutterLocalNotificationsPlugin();
//     var android = AndroidInitializationSettings('@mipmap/ic_launcher');
//     //  );
//     var iOS = const IOSInitializationSettings();
//     var initSetttings = InitializationSettings(android: android, iOS: iOS);

//     flp.initialize(initSetttings);

// //tanker push notification
//     await Tanker_Push_Notification_Function();

// //Maintenance push notification
//     await Maintenance_Push_Notification_Function();

// // General Push Notification
//     await General_Push_Notification_Function(flp);

//     //Broadcast Push Notication
//     await Broadcast_Push_Notification_Function();

//     // // push_notification_function()async{
//     //   var response = await http.post(
//     //     Uri.parse("${Api_Address}push_notification.php"),
//     //     body: {"user_id" : User_Login_id_S.toString()}
//     //   );
//     //   if(response.statusCode == 200){
//     //     var data = jsonDecode(response.body.toString());
//     //     print("Notification Statua ${data.first["status"]}");
//     //     print("notificationnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn");
//     //     if(data.first["status"].toString() == "3"){
//     //       // return
//     //       showNotification("Your Dues are Clear.", flp);
//     //       notification_count= notification_count++;
//     //     }
//     //       else if(data.first["status"].toString() == "1"){
//     //       // return
//     //       showNotification("Your Dues are Pending.", flp);
//     //       notification_count= notification_count++;
//     //     }
//     //     else{
//     //       print("no message");
//     //     }
//     //     data;
//     //   }
//     //   else {
//     //      var data = jsonDecode(response.body.toString());
//     //      data;
//     //   }
//     // }

//     return Future.value(true);
//   });
// }

// // Future <void> callbackDispatcher_General() async {

// //   Workmanager().executeTask((task, inputData) async{
// //       FlutterLocalNotificationsPlugin flp_g = FlutterLocalNotificationsPlugin();
// //        var android = AndroidInitializationSettings('@mipmap/ic_launcher');
// //         //  );
// //     var iOS = IOSInitializationSettings();
// //     var initSetttings = InitializationSettings(android: android,iOS: iOS);

// //     flp_g.initialize(initSetttings);

// // // //tanker push notification
// // //    await Tanker_Push_Notification_Function();

// // // //Maintenance push notification
// // //  await Maintenance_Push_Notification_Function();

// // // General Push Notification
// //   await General_Push_Notification_Function(flp_g);

// //   return Future.value(true);

// //   }

// //   );
// // }
