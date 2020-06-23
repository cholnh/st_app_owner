import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stappowner/_bases/constants/pomangam_theme.dart';
import 'package:stappowner/_bases/di/injector_register.dart';
import 'package:stappowner/_bases/i18n/i18n.dart';
import 'package:stappowner/_bases/router/app_router_v.dart';
import 'package:stappowner/views/pages/_bases/splash_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  InjectorRegister.register();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: '${Messages.appName}',
      theme: ThemeData(
        primarySwatch: primarySwatch,
        primaryColor: primaryColor,
        accentColor: primaryColor,
        canvasColor: backgroundColor,
        appBarTheme: AppBarTheme(
          color: backgroundColor
        ),
      ),
      darkTheme: ThemeData.dark(),
      home: SplashPage(),
      localizationsDelegates: [
        AppLocalizationDelegate(),
        DefaultCupertinoLocalizations.delegate
      ],
      supportedLocales: [Locale('ko'), Locale('en')],
      namedRoutes: routes,
      debugShowCheckedModeBanner: false,
    );
  }
}
