import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:tapparty/common/notifier/authenticaion.notifier.dart';
import 'package:tapparty/config.dart';

class SignUpPage extends StatefulWidget {
  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();



  @override
  void initState() {
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    final AuthenticationNotifier authenticationNotifier = Provider.of<AuthenticationNotifier>(context, listen:false);

    return Scaffold(
     // appBar: AppBar(title: const Text('註冊 Tap Party'),),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(40, 100, 40, 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const Text("註冊 ${Config.appTitle}",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),

                const Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(
                    "成為會員 隨時舉行朋友聚會", //App名
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                  ),
                ),
                Form(
                  key: _formKey,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(50, 100, 50, 60),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                          child: TextFormField(
                            decoration:
                                const InputDecoration(labelText: '電郵 Email'),
                            validator: (text) {
                              bool emailValid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(text!);

                              if (emailValid == false) {
                                return "請輸入正確的電郵";
                              }
                              return null;
                            },
                            controller: _emailController, //呢度拎電郵
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                          child: TextFormField(
                            decoration:
                                const InputDecoration(labelText: '密碼 Password'),
                            obscureText: true,
                            validator: (text) {
                              if (text != null && text.length < 8) {
                                return "請使用至少8個位的密碼";
                              }
                              return null;
                            },
                            controller: _passwordController, //呢度拎密碼
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
                    onPressed: () async {
                      String email = _emailController.text;
                      String password = _passwordController.text;

                      if (_formKey.currentState!.validate()){await authenticationNotifier.signup(
                          //context:context,
                          email: email,
                          password: password);}

                      /*if (email.isNotEmpty && password.isNotEmpty){
                        await authenticationNotifier.signup(email: email, password: password);
                      }else {if(email.isEmpty){
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('請使用電郵註冊')));
                      }else{
                        if(password.isEmpty){
                          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('請設定密碼')));
                        }
                      }

                      }*/
                    },
                    child: const Text('註冊 Signup'),
                    color: Colors.blueAccent,
                    textColor: Colors.white,
                    height: MediaQuery.of(context).size.height / 20,
                    minWidth: double.infinity,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                TextButton(
                  onPressed: () {Get.back();},//呢度用pop唔知岩唔岩可能要再check下
                  child: const Text('已經有註冊帳戶? 馬上登入'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
