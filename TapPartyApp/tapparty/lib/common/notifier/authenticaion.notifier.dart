import 'package:flutter/material.dart';
import 'package:tapparty/common/services/authentication.service.dart';

class AuthenticationNotifier extends ChangeNotifier{
  final AuthenticationService _authenticationService = AuthenticationService();

  Future<String?> signup({
    //required BuildContext context,
    required String email,
    required String password,
  }) async {
    try{
      await _authenticationService.signup(
          //context: context,
          email: email,
          password: password);
    }catch (e){
      print (e);
    }
  }

  Future<String?> login({
    //required BuildContext context,
    required String email,
    required String password,
  }) async {
    try{
      await _authenticationService.login(//context: context,
          email: email, password: password);
    }catch (e){
      print (e);
    }
  }


}