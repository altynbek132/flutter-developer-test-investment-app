import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:l/l.dart';
import 'package:stock_investment_app/app/di/app_scope.dart';
import 'package:stock_investment_app/pages/stocks/stocks_screen.dart';
import 'package:utils/utils_dart.dart';
import 'package:utils/utils_flutter.dart';
import 'package:yx_scope_flutter/yx_scope_flutter.dart';

Future<void> main() async {
  await l.capture(
    () async {
      WidgetsFlutterBinding.ensureInitialized();

      await initializeDateFormatting('kk');

      final appScopeHolder = AppScopeHolder();
      await appScopeHolder.create();

      runApp(ScopeProvider(holder: appScopeHolder, child: const MyApp()));
    },
    LogOptions(
      handlePrint: true,
      printColors: true,
      outputInRelease: false,
      output: LogOutput.developer,
      messageFormatting: LConfig.messageFormatting,
    ),
  );

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
            print("unfocus");
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
