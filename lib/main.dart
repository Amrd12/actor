import 'package:actor/app.dart';
import 'package:actor/core/Router/app_router.dart';
import 'package:actor/core/di/locator.dart';
import 'package:actor/core/helpers/color/my_colors.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: "data.env");
  await EasyLocalization.ensureInitialized();
  setup();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return EasyLocalization(
      supportedLocales: const [Locale('en'), Locale('ar')],
      path: 'assets/translations',
      fallbackLocale: const Locale('en', 'US'),
      saveLocale: true,
      child: const ScreenUtilInit(
        designSize: Size(320, 640),
        minTextAdapt: true,
        splitScreenMode: true,
        child: _App(),
      ),
    );
  }
}

class _App extends StatelessWidget {
  const _App({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      home: const ActorApp(),
      theme: ThemeData(
        primaryColor: MyColors.myYellow,
      ),
      onGenerateRoute: AppRouter().generateRoute,
    );
  }
}
