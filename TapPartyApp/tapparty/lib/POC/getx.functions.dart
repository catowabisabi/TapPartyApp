import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tapparty/POC/state.management.lib.dart/counter.state.dart';
import 'package:tapparty/pages/login/index.dart';



class GetFunctionView extends StatefulWidget {
   GetFunctionView({Key? key}) : super(key: key);
  final controller = Get.put(CounterState());

  @override
  State<GetFunctionView> createState() => _GetFunctionViewState();
}

class _GetFunctionViewState extends State<GetFunctionView> {


  _goToOtherViews() {
    Get.to(LoginPage());
  }

  _showSnackBar() {
    Get.snackbar("你好嗎", "你好似唔記得入密碼wo");
  }

  _showDialog(){
    Get.defaultDialog(title: "你好似唔記得左D野", content: Text("就係唔記得左還錢比我呀!"));
  }
 _showBottomSheet(){
    Get.bottomSheet(
      Container(
        child: Wrap(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.music_note),
              title: Text("Music"),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.videocam),
              title: Text("Video"),
              onTap: (){},
            ),
            SizedBox(height: 300,)
          ],
        ),
      ),
          backgroundColor: Colors.blue,
    );
 }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX Functions Page 1'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
              padding: const EdgeInsets.fromLTRB(40, 100, 40, 20),
              child: Container(
                child: Column(
                  children: [
                    ElevatedButton(

                      child: const Text('去另一頁View'),
                      onPressed: () {
                        _goToOtherViews();
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(130, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        primary: Colors.blue,
                        onPrimary: Colors.white,
                      ),
                    ),
                    SizedBox(height: 20,),
                    ElevatedButton(
                      child: const Text('Show SnackBar'),
                      onPressed: () {
                        _showSnackBar();
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(130, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        primary: Colors.blue,
                        onPrimary: Colors.white,
                      ),
                    ),
                    SizedBox(height: 20,),
                    ElevatedButton(
                      child: const Text('Show Dialog'),
                      onPressed: () {
                        _showDialog();
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(130, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),

                        ),
                        primary: Colors.blue,
                        onPrimary: Colors.white,

                      ),
                    ),
                    SizedBox(height: 20,),
                    ElevatedButton(
                      child: const Text('開bottomsheet'),
                      onPressed: () {
                        _showBottomSheet();
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(130, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        primary: Colors.blue,
                        onPrimary: Colors.white,
                      ),
                    ),
                    SizedBox(height: 20,),


                  ],
                ),
              )),
        ),
      ),
    );
  }
}
