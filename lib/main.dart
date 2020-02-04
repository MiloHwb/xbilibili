import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:xbilibili/api/http_method.dart';
import 'package:xbilibili/providers/hot_page_provider.dart';

import 'providers/anniversary70_page_provider.dart';
import 'providers/bangumi_page_provider.dart';
import 'providers/channel_page_provider.dart';
import 'providers/cinema_page_provider.dart';
import 'providers/live_page_provider.dart';
import 'providers/live_player_page_provider.dart';
import 'providers/login_page_provider.dart';
import 'providers/main_page_provider.dart';
import 'providers/mall_page_privider.dart';
import 'providers/recommend_page_provider.dart';
import 'providers/search_page_provider.dart';
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
        ChangeNotifierProvider(create: (_) => MainPageProvider()),
        ChangeNotifierProvider(create: (_) => LoginPageProvider()),
        ChangeNotifierProvider(create: (_) => ChannelPageProvider()),
        ChangeNotifierProvider(create: (_) => SearchPageProvider()),
        ChangeNotifierProvider(create: (_) => MallPageProvider()),
        ChangeNotifierProvider(create: (_) => LivePageProvider()),
        ChangeNotifierProvider(create: (_) => RecommendPageProvider()),
        ChangeNotifierProvider(create: (_) => HotPageProvider()),
        ChangeNotifierProvider(create: (_) => BangumiProvider()),
        ChangeNotifierProvider(create: (_) => CinemaPageProvider()),
        ChangeNotifierProvider(create: (_) => Anniversary70PageProvider()),
//        ChangeNotifierProvider(create: (_) => LivePlayerPageProvider()),
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
