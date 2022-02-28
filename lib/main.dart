import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../screens/navigator_screen.dart';

void main() {
  runApp(MyApp());
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.grey.shade100,
  ));
}

class MyApp extends StatelessWidget {
   MaterialColor white = const MaterialColor(0xFFFFFFFF, <int, Color>{
      50: Color(0xFFFFFFFF,),
      100: Color(0xFFFFFFFF),
      200: Color(0xFFFFFFFF),
      300: Color(0xFFFFFFFF),
      400: Color(0xFFFFFFFF),
      500: Color(0xFFFFFFFF),
      600: Color(0xFFFFFFFF),
      700: Color(0xFFFFFFFF),
      800: Color(0xFFFFFFFF),
      900: Color(0xFFFFFFFF),
    },
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Instgram Clone',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            appBarTheme: AppBarTheme(
              textTheme: ThemeData.light().textTheme.copyWith(
                titleLarge: const TextStyle(
                  fontFamily: 'Billabong',
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                ),
              ),
            ),
            fontFamily: 'Gilroy',
            errorColor: Colors.red,
            colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.grey)
                .copyWith(secondary: const Color.fromRGBO(67, 162, 250, 1))),
        home: NavigatorScreen());
  }
}
