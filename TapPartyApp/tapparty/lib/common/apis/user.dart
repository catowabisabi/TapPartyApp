

import 'package:tapparty/common/entities/user.dart';
import 'package:tapparty/common/notifier/authenticaion.notifier.dart';


/// User
class UserAPI {
  static final AuthenticationNotifier authenticationNotifier = AuthenticationNotifier();

  /// Login
  static Future<String?> login({
    //UserLoginRequestEntity?
    //params,
    email,
    password,
  }) async {
    var response =  await authenticationNotifier.login(
        //context: context,
        email: email,
        password: password);


    //return UserLoginResponseEntity.fromJson(response);
  }


  /// 注册
  static Future<String?> register({

 //   UserRegisterRequestEntity?params,
    email,
    password,

  }) async {
    await authenticationNotifier.signup(
      //context: context,
        email: email,
        password: password);
   // return UserRegisterRequestEntity.fromJson(response);
  }

 /* /// Profile
  static Future<UserLoginResponseEntity> profile() async {
    var response = await HttpUtil().post(
      '/user/profile',
    );
    return UserLoginResponseEntity.fromJson(response);
  }

  /// Logout
  static Future logout() async {
    return await HttpUtil().post(
      '/user/logout',
    );
  }*/
}
