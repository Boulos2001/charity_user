import 'package:cahrity_project/features/auth/data/model/user_model.dart';

abstract class GlobalSession {
  String? getToken();
  String? getLang();
  String? getFcmToken();
  UserResponseModel? getUser();

  //========================
  void setToken(String token);
  void setLang(String lang);
  void setFcmToken(String fcmToken);
  void setUser(UserResponseModel? user);
  void clear();
}
