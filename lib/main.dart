import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homemanagementapp/shared/constant/colors/app_colors.dart';
import 'package:homemanagementapp/shared/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: Routes().getRoutes,
      initialRoute: Routes.splash,
      theme: ThemeData(
        textTheme: GoogleFonts.latoTextTheme(Typography.dense2014).copyWith(
          bodyMedium: GoogleFonts.oswald(
              textStyle: Typography.dense2014.bodyMedium,
              color: AppColors.delftBlue),
        ),
      ),
    );
  }
}
