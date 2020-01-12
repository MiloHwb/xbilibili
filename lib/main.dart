import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:xbilibili/api/http_method.dart';
import 'package:xbilibili/providers/main_page_provider.dart';

import 'providers/login_page_provider.dart';
import 'route/routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  init();

  ///强制竖屏
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((_) {
    runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => new MainPageProvider()),
        ChangeNotifierProvider(create: (_) => new LoginPageProvider())
      ],
      child: MyApp(),
    ));
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Bilibili',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        primaryColor: Colors.pink[300],
      ),
      onGenerateRoute: generateRoutes,
      initialRoute: RouteName.splashPage,
    );
  }
}
