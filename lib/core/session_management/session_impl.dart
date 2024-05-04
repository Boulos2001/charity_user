// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:cahrity_project/features/auth/data/model/user_model.dart';

import 'session.dart';

@lazySingleton
class GlobalSessionImpl implements GlobalSession {
  final SharedPreferences sharedPref;

  GlobalSessionImpl(
    this.sharedPref,
  );

  @override
  String? getToken() {
    return sharedPref.getString("token");
  }

  @override
  String? getLang() {
    return sharedPref.getString("lang");
  }

  @override
  String? getFcmToken() {
    return sharedPref.getString("fcm_token");
  }

  @override
  UserResponseModel? getUser() {
    final user = sharedPref.getString("user");
    if (user != null) {
      return UserResponseModel.fromJson(jsonDecode(user));
    } else {
      return null;
    }
  }

  //=================================

  @override
  void setToken(String token) {
    sharedPref.setString("token", token);
  }

  @override
  void setLang(String lang) {
    sharedPref.setString("lang", lang);
  }

  @override
  void setFcmToken(String fcmToken) {
    sharedPref.setString("fcm_token", fcmToken);
  }

  @override
  void setUser(UserResponseModel? user) {
    final userJson = user?.toJson();
    final userEncoded = jsonEncode(userJson);

    sharedPref.setString("user", userEncoded);
  }

  @override
  void clear() {
    sharedPref.clear();
  }
}
