import 'package:flutter/material.dart';

import '../../../shared/utils/validator/validator.dart';
import '../../../shared/widgets/single_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Masuk Akun Saya"),
            Container(
              color: Colors.amber,
              height: MediaQuery.sizeOf(context).height / 2,
              width: MediaQuery.sizeOf(context).width / 2,
              margin: const EdgeInsets.symmetric(vertical: 12),
            ),
            Form(
              child: Column(
                children: [
                  Text("Email : "),
                  TextFormField(
                    // enabled: (widget.isUpdate) ? false : true,
                    validator: (value) => Validator.rule(value, required: true),
                    // controller: noTableController,
                    decoration: const InputDecoration(
                      label: Text("No. Meja"),
                    ),
                  ),
                ],
              ),
            ),
            SingleButtonWidget(
              isMainButton: true,
              textLabel: "MASUK",
            ),
          ],
        ),
      ),
    );
  }
}
