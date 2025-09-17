import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:device_frame/device_frame.dart';
import 'package:votingapp/route/route.dart';
import 'package:votingapp/view/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: Splash_Screen.id,
          routes: {
            for (var entry in AppRoutes.routes.entries)
              entry.key: (context) => _wrapWithFrame(entry.value(context)),
          },
        );
      },
    );
  }

  Widget _wrapWithFrame(Widget screen) {
    return Scaffold(
      body: Center(
        child: DeviceFrame(
          device: Devices.ios.iPhone16ProMax,
          screen: screen,
        ),
      ),
    );
  }
}
