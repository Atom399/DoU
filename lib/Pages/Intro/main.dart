// import 'package:flutter/material.dart';

// import 'splash_screen.dart';
// //import 'package:flutter_native_splash/flutter_native_splash.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         theme: ThemeData(
//           primarySwatch: Colors.blue,
//         ),
//         debugShowCheckedModeBanner: false,
//         home: SplashScreen());
//   }
// }  

// import 'package:animated_theme_switcher/animated_theme_switcher.dart';
// import 'package:dou/pages/Second_PAGE/page/profile_page.dart';
// import 'package:dou/pages/Second_PAGE/themes.dart';
// import 'package:dou/pages/Second_PAGE/utils/user_preferences.dart';
// import 'package:dou/splash_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// Future main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await SystemChrome.setPreferredOrientations([
//     DeviceOrientation.portraitUp,
//     DeviceOrientation.portraitDown,
//   ]);

//   await UserPreferences.init();

//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   static final String title = 'User Profile';

//   @override
//   Widget build(BuildContext context) {
//     final user = UserPreferences.getUser();

//     return ThemeProvider(
//       initTheme: user.isDarkMode ? MyThemes.lightTheme : MyThemes.lightTheme,
//       child: Builder(
//         builder: (context) => MaterialApp(
//           debugShowCheckedModeBanner: false,
//           theme: ThemeProvider.of(context),
//           title: title,
//           home: SplashScreen(),
//         ),
//       ),
//     );
//   }
// }
