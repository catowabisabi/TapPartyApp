import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tapparty/common/values/values.dart';
import 'package:tapparty/common/widgets/widgets.dart';
import 'package:tapparty/config.dart';
import 'package:tapparty/POC/getx.functions.dart';
import 'package:tapparty/pages/home/index.dart';
import 'package:tapparty/pages/login/controller.dart';



class LoginPage extends GetView<SignInController> {


  final _formKey = GlobalKey<FormState>();
/*  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {
    _emailController = TextEditingController();
    _passwordController = TextEditingController();

  }*/



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      // appBar: AppBar(title: const Text('登入 Tap Party'),),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(40, 100, 40, 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[

                const Text(
                  Config.appTitle, //App名
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(
                    "輕輕一按 在外國也能與朋友聚會", //App名
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                  ),
                ),
                Form(
                 // key: _formKey,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(50, 100, 50, 60),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                          child: TextFormField(
                            decoration:
                                const InputDecoration(labelText: '電郵 Email'),
                            /*validator: (text) {
                              if (text != null) {
                                bool emailValid = RegExp(
                                        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                    .hasMatch(text);
                                if (emailValid == false) {
                                  return "請輸入正確的電郵";
                                }
                                //return null;
                              }
                            },*/

                            controller: controller.emailController, //呢度拎電郵
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                          child: TextFormField(
                            decoration:
                                const InputDecoration(labelText: '密碼 Password'),
                            obscureText: true,
                            /*validator: (text) {
                              if (text!.isEmpty) {
                                return "請輸入密碼";
                              }
                              //return null;
                            },*/
                            controller: controller.passwordController, //呢度拎密碼
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 20.0, left: 50, right: 50),
                  child: MaterialButton(
                    onPressed: controller.handleSignIn,
                    child: const Text('登入 Login'),
                    color: Colors.blueAccent,
                    textColor: Colors.white,
                    height: MediaQuery.of(context).size.height / 20,
                    minWidth: double.infinity,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),



                SizedBox(
                  height: 5,
                ),
                TextButton(
                  onPressed: () {
                    controller.handleNavSignUp();
                  },
                  child: Text('還沒有註冊帳戶? 立即註冊'),
                ),

                SizedBox(
                  height: 5,
                ),
                TextButton(
                  onPressed: () {

                    Get.to(()=>GetFunctionView());
                  },
                  child: Text('GetX Functions'),
                ),
                SizedBox(
                  height: 5,
                ),
                TextButton(
                  onPressed: () {
                    Get.offAll(()=>HomePage());
                  },
                  child: Text('Go to HomePage (For UI Design)'),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
