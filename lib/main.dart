import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:med_bay_patients/components/app_theme.dart';
import 'package:med_bay_patients/screens/about_screen.dart';
import 'package:med_bay_patients/screens/admin_login_screen.dart';
import 'package:med_bay_patients/screens/loading_screen.dart';
import 'package:med_bay_patients/screens/main_screen.dart';
import 'package:med_bay_patients/screens/settings_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Med-Bay',
      theme: AppTheme().lightTheme,
      darkTheme: AppTheme().darkTheme,
      themeMode: ThemeMode.system,
      initialRoute: MainScreen.id,
      routes: {
        MainScreen.id: (context) => MainScreen(),
        AboutScreen.id: (context) => AboutScreen(),
        LoadingScreen.id: (context) => LoadingScreen(),
        AdminLoginScreen.id: (context) => AdminLoginScreen(),
        SettingsScreen.id: (context) => SettingsScreen()
      },
    );
  }
}
