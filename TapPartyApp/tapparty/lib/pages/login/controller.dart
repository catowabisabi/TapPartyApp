import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:tapparty/common/apis/user.dart';
import 'package:tapparty/common/entities/user.dart';
import 'package:tapparty/common/routes/route.names.dart';
import 'package:tapparty/common/store/user.dart';
import 'package:tapparty/common/utils/security.dart';
import 'package:tapparty/common/utils/validator.dart';
import 'package:tapparty/common/widgets/toast.dart';
import 'package:tapparty/pages/login/state.dart';

import 'index.dart';

class SignInController extends GetxController{

  //Cato:
  final state = SignInState();

  SignInController();
  // email and password controller for signin
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  //nav to signup pages
  handleNavSignUp() {
    Get.toNamed(AppRoutes.SIGN_UP);
  }

  //forgot password
  handleForgotPassword (){
    toastInfo(msg: '忘記密碼');
  }

  // sign in the user with the password and email provided
  handleSignIn() async {

    //呢度其實可能唔使check都ok
    if (!duIsEmail(emailController.value.text)) {
      toastInfo(msg: '請輸入正確的電郵');
      return;
    }

    print (88888888888888888);
    if (!duCheckStringLength(passwordController.value.text, 6)) {

      toastInfo(msg: '密碼長度不能少於6位');


      return;

    }

    // add salt
    // 呢度可以唔用, 都唔知用黎做乜睇唔明
    /*UserLoginRequestEntity params = UserLoginRequestEntity(
      email: emailController.value.text,
      password: duSHA256(passwordController.value.text),
    );*/

    //加左salt再直接call login,

    //create user profile from the response

    await UserAPI.login(
      //params: params,
      email: emailController.value.text,
    //  password: duSHA256(passwordController.value.text),
      password: passwordController.value.text,
    );//呢度會回返UID 同 EMAIL, 之後會用個UID去搵USER 資料之後再寫



    //UserStore.to.saveProfile(userProfile);// user model呢度要再create過

   // Get.offAndToNamed(AppRoutes.HomePage);
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

}