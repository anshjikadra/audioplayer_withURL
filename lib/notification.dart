// import 'package:flutter_local_notifications/flutter_local_notifications.dart'
//
// class notificationwidget
// {
//   static final Notification = FlutterLocalNotificationsPlugin();
//
//   static Future.init({bool sechduled = false})async{
//
//   var initAndroidSettings=AndroidInitializationSettings(defaultIcon);
//   final settings = InitializationSettings(android: initAndroidSettings);
//   await Notification.initialize(settings);
// }
//
// static Future showNotification(
// {
// var id=0,
// var title,
// var body,
// var payload
//
// })async => Notification.show(id, title, body, await notificationDetails());
//
// static notificationDetails() async{
//   return NotificationDetails(
//       android: AndroidNotificationDetails(
//           ' channel id',
//           'channel name',
//           importance: Importance.max
//       ),
//       ios: IOSNotificationDetails())}
// }