import 'package:flutter/material.dart';
import 'package:homemanagementapp/shared/routes/routes.dart';
import 'package:homemanagementapp/shared/widgets/single_button.dart';

class CoverScreen extends StatelessWidget {
  const CoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Selamat Datang"),
            Container(
              color: Colors.amber,
              height: MediaQuery.sizeOf(context).height / 2,
              width: MediaQuery.sizeOf(context).width / 2,
              margin: const EdgeInsets.symmetric(vertical: 12),
            ),
            SingleButtonWidget(
                isMainButton: true,
                textLabel: "MASUK",
                voidCallback: () {
                  print("run");
                  Navigator.pushNamedAndRemoveUntil(
                      context, Routes.login, (route) => false);
                }),
            const SizedBox(height: 12),
            SingleButtonWidget(
              isMainButton: false,
              textLabel: "DAFTAR",
              voidCallback: () {},
            ),
          ],
        ),
      ),
    );
  }
}
