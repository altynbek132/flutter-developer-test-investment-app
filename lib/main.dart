import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stock_investment_app/pages/stocks/stocks_screen.dart';
import 'package:utils/utils_dart.dart';

Future<void> main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 852),
      builder: (context, child) {
        return GestureDetector(
          onTap: () {
            ll.v6("unfocus");
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: MaterialApp(
            title: 'Stock Investment',
            theme: ThemeData(
              fontFamily: 'SF Pro',
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
              useMaterial3: true,
            ),
            home: const StocksScreen(),
          ),
        );
      },
    );
  }
}
