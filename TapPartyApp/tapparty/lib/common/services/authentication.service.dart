import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supabase/supabase.dart';
import 'package:tapparty/common/credentials/supabase.credentials.dart';

class AuthenticationService {

  Future<String?> signup({
    //required BuildContext context,
    required String email,
    required String password,
  }) async {
    GotrueSessionResponse response =
        await SupabaseCredentials.supabaseClient.auth.signUp(email, password);

    if (response.error == null) {
      //print (response.data.toString());
      String? userEmail = response.data!.user!.email;
      print("Signup successful : $userEmail");
      Get.snackbar("註冊成功", userEmail!);
      //ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("註冊成功: $userEmail")));
    } else {
      print("Signup error : ${response.error!.message}");
      Get.snackbar("註冊失敗", response.error!.message);
      //ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("註冊失敗: ${response.error!.message}")));
    }
  }

  Future<String?> login({
    //required BuildContext context,
    required String email,
    required String password,
  }) async {
    GotrueSessionResponse response = await SupabaseCredentials
        .supabaseClient.auth
        .signIn(
        email: email,
        password: password,
        //options: AuthOptions(redirectTo: SupabaseCredentials.supabaseUrl)
    );

    if (response.error == null) {
      String? userEmail = response.data!.user!.email;
      Get.snackbar("登入成功", userEmail!);
      //ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("成功登入 : $userEmail")));
      print("Login sucessful : $userEmail");
    } else {

      print("Login error : ${response.error!.message}");
      Get.snackbar("登入失敗", response.error!.message);
      //ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("錯誤: ${response.error!.message}")));

    }
  }
}
