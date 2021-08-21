// import 'package:flutter/material.dart';
// import 'package:flutter_chat_ui/Pages/Profile/page/profile_page.dart';
// import 'package:flutter_chat_ui/Pages/Sigin_Login/sigin.dart';
// // import 'package:flutter_chat_ui/screens/home_screen.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: ' Chat ',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primaryColor: Colors.white,
//         accentColor: Color(0xFFEEE4CA),
//       ),
//       home: ProfilePage(),
//     );
//   }
// }

// import 'package:animated_theme_switcher/animated_theme_switcher.dart';
// import 'package:doyou/Pages/Intro/splash_screen.dart';
// // ignore: unused_import
// import 'package:doyou/Pages/Profile/page/profile_page.dart';
// import 'package:firebase_core/firebase_core.dart';
// // import 'package:flutter_chat_ui/Pages/Profile/widget/themes.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:doyou/Pages/Profile/themes.dart';
// import 'package:doyou/Pages/Profile/utils/user_preferences.dart';
// // ignore: unused_import
// import 'package:doyou/Pages/Sigin_Login/sigin.dart';

// Future main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await SystemChrome.setPreferredOrientations([
//     DeviceOrientation.portraitUp,
//     DeviceOrientation.portraitDown,
//   ]);

//   await UserPreferences.init();
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();

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
import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:doyou/Pages/Chat/screens/home_screen.dart';
// ignore: unused_import
import 'package:doyou/Pages/Intro/intro.dart';
import 'package:doyou/Pages/Intro/splash_screen.dart';
// ignore: unused_import
import 'package:doyou/Pages/Profile/page/profile_page.dart';
// ignore: unused_import
import 'package:doyou/Pages/Sigin_Login/otp2.dart';
// ignore: unused_import
import 'package:doyou/Pages/animations/loading/loading.dart';
import 'package:doyou/bloc/auth/auth_cubit.dart';
import 'package:doyou/bloc/communication/communication_cubit.dart';
import 'package:doyou/bloc/get_device_number/get_device_numbers_cubit.dart';
import 'package:doyou/bloc/my_chat/my_chat_cubit.dart';
import 'package:doyou/bloc/phone_auth/phone_auth_cubit.dart';
import 'package:doyou/bloc/user/user_cubit.dart';
import 'package:doyou/data/model/user_model.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:doyou/Pages/Profile/themes.dart';
import 'package:doyou/Pages/Profile/utils/user_preferences.dart';
// ignore: unused_import
import 'package:doyou/Pages/Sigin_Login/sigin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'injection_container.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  await UserPreferences.init();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await di.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'User Profile';

  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.getUser();
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) => di.sl<AuthCubit>()..appStarted(),
          ),
          BlocProvider(
            create: (_) => di.sl<PhoneAuthCubit>(),
          ),
          BlocProvider<UserCubit>(
            create: (_) => di.sl<UserCubit>()..getAllUsers(),
          ),
          BlocProvider<GetDeviceNumbersCubit>(
            create: (_) => di.sl<GetDeviceNumbersCubit>(),
          ),
          BlocProvider<CommunicationCubit>(
            create: (_) => di.sl<CommunicationCubit>(),
          ),
          BlocProvider<MyChatCubit>(
            create: (_) => di.sl<MyChatCubit>(),
          ),
        ],
        child: ThemeProvider(
          initTheme:
              user.isDarkMode ? MyThemes.lightTheme : MyThemes.lightTheme,
          child: Builder(
            builder: (context) => MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeProvider.of(context),
              title: title,
              routes: {
                "/": (context) {
                  return BlocBuilder<AuthCubit, AuthState>(
                      builder: (context, authState) {
                    if (authState is Authenticated) {
                      return BlocBuilder<UserCubit, UserState>(
                        builder: (context, userState) {
                          if (userState is UserLoaded) {
                            final currentUserInfo = userState.users.firstWhere(
                                (user) => user.uid == authState.uid,
                                orElse: () => UserModel());
                            return HomeScreen(userInfo: currentUserInfo);
                            //return SigninPage(uid: '');
                          }
                          return Container();
                        },
                      );
                    }
                    if (authState is UnAuthenticated) {
                      return SplashScreen();
                    }
                    return Container(
                      child: Text(
                          "Something went wrong 😌\nRestart the app and try again"),
                    );
                  });
                }
              },
              //home: SplashScreen(),
            ),
          ),
        ));
  }
}
