import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:tapparty/common/routes/pages.dart';
import 'package:tapparty/global.dart';

import 'common/providers/app.provider.dart';
import 'common/routes/route.names.dart';

void main() async {
/*  const supabaseUrl = 'https://dlglwahmykkdrelhfiqx.supabase.co';
  const supabaseKey =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb2xlIjoiYW5vbiIsImlhdCI6MTYzODQxNjIxNiwiZXhwIjoxOTUzOTkyMjE2fQ.AjLW8cVtGoVBRlwpApNuxSgdCUHoG7NU7WcKFLzbhe8';
  final supabaseClient = SupabaseClient(supabaseUrl, supabaseKey);

  Injector.appInstance.registerSingleton<SupabaseClient>(() => supabaseClient);*/
  await Global.init();
  runApp(MyApp());
}

/*class Core extends StatelessWidget {
  const Core({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(child: MyApp(), providers: AppProviders.providers);}
}*/

class MyApp extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //GetMaterialApp
    return GetMaterialApp(
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      // routes: AppRoutes.routes,
      debugShowCheckedModeBanner: false,
      builder: EasyLoading.init(),
      navigatorObservers: [AppPages.observer],
      theme: ThemeData.dark(),
      /*(
          primarySwatch: Colors.blue,
        ),*/
    );
  }
}
