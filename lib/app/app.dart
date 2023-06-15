import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import '../core/config/config.dart';
import '../core/manager/theme_manager.dart';
import '../core/routes/routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    if (BuildConfig.isDebugLayout()) {
      return MaterialApp.router(
        debugShowCheckedModeBanner: false,
        builder: DevicePreview.appBuilder,
        locale: DevicePreview.locale(context),
        routeInformationParser: AppRoute.router.routeInformationParser,
        routerDelegate: AppRoute.router.routerDelegate,
        routeInformationProvider: AppRoute.router.routeInformationProvider,
        title: "Ticket Preview",
        theme: getApplicationTheme(),
      );
    } else {
      return MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routeInformationParser: AppRoute.router.routeInformationParser,
        routerDelegate: AppRoute.router.routerDelegate,
        routeInformationProvider: AppRoute.router.routeInformationProvider,
        title: "Ticket",
        theme: getApplicationTheme(),
      );
    }
  }
}
