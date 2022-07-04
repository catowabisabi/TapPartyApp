import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:tapparty/common/notifier/authenticaion.notifier.dart';
import 'package:tapparty/common/notifier/database.notifier.dart';

class AppProviders{
  static List<SingleChildWidget> providers = [
    ChangeNotifierProvider(create: (_) => AuthenticationNotifier()),
    ChangeNotifierProvider(create: (_) => DatabaseNotifier()),
  ];
}