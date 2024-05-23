import 'package:dio/dio.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:store_app/core/app/env.variables.dart';

class FirebaseCloudMessaging {
  factory FirebaseCloudMessaging() => _instance;

  FirebaseCloudMessaging._();

  static final FirebaseCloudMessaging _instance = FirebaseCloudMessaging._();

  static const String subscribeKey = 'moataz-store';
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;

  ValueNotifier<bool> isNotificationEnabled = ValueNotifier<bool>(false);
  bool isNotificationPermissionEnabled = false;

  Future<void> init() async {
    await handleNotificationsPermission();
  }

  Future<void> controllerForUserSubscription() async {
    if (isNotificationPermissionEnabled == false) {
      await handleNotificationsPermission();
    } else {
      if (isNotificationEnabled.value == false) {
        await subscribeNotification();
      } else {
        await unSubscribeNotification();
      }
    }
  }

  Future<void> handleNotificationsPermission() async {
    final settings = await _firebaseMessaging.requestPermission(
      badge: false,
    );

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      isNotificationPermissionEnabled = true;
      debugPrint('====🔔 Notification Subscribed 🔔=====');
      await subscribeNotification();
    } else {
      debugPrint('====🔕 Notification Unsubscribed 🔕=====');
      isNotificationPermissionEnabled = false;
      isNotificationEnabled.value = false;
      await unSubscribeNotification();
    }
  }

  /// subscribe notification
  Future<void> subscribeNotification() async {
    await FirebaseMessaging.instance.subscribeToTopic(subscribeKey);
    isNotificationEnabled.value = true;
    debugPrint('====🔔 Notification Subscribed 🔔=====');
  }

  /// unsubscribe notification

  Future<void> unSubscribeNotification() async {
    await FirebaseMessaging.instance.unsubscribeFromTopic(subscribeKey);
    isNotificationEnabled.value = false;
    debugPrint('====🔕 Notification Unsubscribed 🔕=====');
  }

  Future<void> sendTopicNotification(
      {required String title, required String body,required int productId }) async {
    try {
      final response = Dio().post<dynamic>(
        EnvVariable.instance.notificationBaseUrl,
        options: Options(
          contentType: Headers.jsonContentType,
          responseType: ResponseType.json,
          validateStatus: (status) => true,
          headers: {
            'Authorization': 'Key= ',
            'Content-Type': 'application/json',
          },
        ),
        data: {
          'to': '<Device FCM token >',
          'notification': {
            'title': title,
            'body': body,
            'product_id': productId,
          },
        },
      );
    } catch (e) {
      print('Notification Error $e');
    }
  }
}
