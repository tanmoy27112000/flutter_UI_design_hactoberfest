import 'dart:developer';

import 'package:drsimple/services/allservice.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:workmanager/workmanager.dart';
import 'view/app essentionals/my_app.dart';
import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;

import 'package:flutter_local_notifications/flutter_local_notifications.dart';

//this is the name given to the background fetch
const simplePeriodicTask = "simplePeriodicTask";
void showNotification(title, v, flp) async {
  var android = const AndroidNotificationDetails('channel 1', 'channel General',
      priority: Priority.high, importance: Importance.max);
  var iOS = const IOSNotificationDetails();
  var platform = NotificationDetails(android: android, iOS: iOS);
  await flp.show(0, title, '$v', platform, payload: 'VIS \n $v');
}

void showBroadcasteNotification(title, v, flp) async {
  var android = const AndroidNotificationDetails(
      'channel 2', 'channel Broadcaste',
      priority: Priority.high, importance: Importance.max);
  var iOS = const IOSNotificationDetails();
  var platform = NotificationDetails(android: android, iOS: iOS);
  await flp.show(1, title, '$v', platform, payload: 'VIS \n $v');
}

late SharedPreferences sharedPreferences;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sharedPreferences = await SharedPreferences.getInstance();
  await Workmanager().initialize(callbackDispatcher,
      isInDebugMode:
          false); //to true if still in testing lev turn it to false whenever you are launching the app
  Workmanager().registerPeriodicTask("5", simplePeriodicTask,
      existingWorkPolicy: ExistingWorkPolicy.replace,
      frequency: const Duration(minutes: 15), //when should it check the link
      initialDelay: const Duration(
          seconds: 10), //duration before showing the notification
      constraints: Constraints(
        networkType: NetworkType.connected,
      ));
  Workmanager().registerOneOffTask("task-identifier", "simpleTask");
  await Firebase.initializeApp();

  await initServices();
  runApp(const MyApp());
}

callbackDispatcher() {
  Workmanager().executeTask((task, inputData) async {
    try {
      FlutterLocalNotificationsPlugin flp = FlutterLocalNotificationsPlugin();
      var android = const AndroidInitializationSettings('@mipmap/ic_launcher');
      var iOS = const IOSInitializationSettings();
      var initSetttings = InitializationSettings(android: android, iOS: iOS);
      flp.initialize(initSetttings);
      SharedPreferences notisharedPreferences =
          await SharedPreferences.getInstance();

      if (notisharedPreferences.getString("number") != null) {
        await generalNotification(
            user_id: notisharedPreferences.getString("number").toString(),
            flp: flp);
        await broadcasteNotification(
            user_id: notisharedPreferences.getString("number").toString(),
            flp: flp);
        //   Fluttertoast.showToast(msg: " Notification Function Run");
      }
    } catch (e) {
      //  Fluttertoast.showToast(msg: "$e", toastLength: Toast.LENGTH_LONG);
    }
    return Future.value(true);
  });
}

generalNotification({user_id, flp, isSeen = "0"}) async {
  Map<String, dynamic> data = {"user_id": user_id, "is_seen": isSeen};
  var response = await http.post(
    Uri.parse("https://dr-simple.com/test_api/simple/general_notification.php"),
    body: data,
  );
  var convert = await json.decode(response.body);
  String status = convert[0]["status"].toString();
  // Fluttertoast.showToast(msg: "$convert");

  if (status == "10") {
    // Fluttertoast.showToast(msg: "new General Notification notification");
    showNotification("Dr.simple", convert[0]["message"], flp);
    await seenNotification(user_id: user_id);
  } else {
    // inspect(convert[0]["status"]);
    // Fluttertoast.showToast(
    //     msg: "No General Notification notification ${convert[0]["status"]}");
  }
}

///////////////////////
broadcasteNotification({
  user_id,
  flp,
}) async {
  Map<String, dynamic> data = {
    "user_id": user_id,
  };
  var response = await http.post(
    Uri.parse("https://dr-simple.com/test_api/simple/general_broadcast.php"),
    body: data,
  );
  var convert = await json.decode(response.body);
  String status = convert[0]["status"].toString();
  // Fluttertoast.showToast(msg: "BroadCaste $convert");

  if (status == "1") {
    // Fluttertoast.showToast(msg: "Broadcaste notification");
    showBroadcasteNotification("Dr.simple", convert[0]["message"], flp);
    await seenBroadcasteNotification(
        user_id: user_id, broadcasteID: convert[0]["id"]);
  } else {
    // inspect("Broadcate Notification ${convert[0]["status"]}");
    // Fluttertoast.showToast(
    //     msg: "no Brodcaste notification ${convert[0]["status"]}");
  }
}

/////////////////////
seenBroadcasteNotification({user_id, broadcasteID}) async {
  Map<String, dynamic> data = {
    "user_id": user_id,
    "broadcast_id": broadcasteID
  };
  var response = await http.post(
    Uri.parse("https://dr-simple.com/test_api/simple/broadcast_seen.php"),
    body: data,
  );

//   var convert = await json.decode(response.body);
//   String status = convert[0]["status"].toString();
// ///////////////debugin remove later
//   if (status != "10") {
//   } else {
//     inspect(convert[0]["status"]);
//  Fluttertoast.showToast(msg: "BraodCaste Seen");
//   }
}

//////////////////////
seenNotification({
  user_id,
}) async {
  Map<String, dynamic> data = {"user_id": user_id, "is_seen": '1'};
  var response = await http.post(
    Uri.parse("https://dr-simple.com/test_api/simple/general_notification.php"),
    body: data,
  );

  var convert = await json.decode(response.body);
  String status = convert[0]["status"].toString();
///////////////debugin remove later
  if (status != "10") {
  } else {
    inspect(convert[0]["status"]);
    // Fluttertoast.showToast(
    //     msg: "no seen on  notification ${convert[0]["status"]}");
  }
}
