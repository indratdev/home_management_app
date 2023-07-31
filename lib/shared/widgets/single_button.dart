import 'package:flutter/material.dart';
import 'package:homemanagementapp/shared/constant/colors/app_colors.dart';

class SingleButtonWidget extends StatelessWidget {
  String? contentMessage;
  String textLabel;
  void Function()? voidCallback;
  bool isMainButton;

  SingleButtonWidget({
    super.key,
    required this.textLabel,
    required this.isMainButton,
    this.voidCallback,
    this.contentMessage,
  });

  @override
  Widget build(BuildContext context) {
    print(">>> color : ${isMainButton}");
    return SizedBox(
      width: MediaQuery.sizeOf(context).width - 100,
      height: MediaQuery.sizeOf(context).width / 8,
      child: ElevatedButton(
        onPressed: voidCallback,
        style: ElevatedButton.styleFrom(
          elevation: 3,
          backgroundColor:
              (isMainButton) ? AppColors.delftBlue : AppColors.lightred,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Text(textLabel),
      ),
    );
  }
}
