import 'package:flutter/material.dart';

import '../utils/colors_manager.dart';
import '../utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.onTap, required this.text,
  });

  final void Function()? onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 60,
        decoration: ShapeDecoration(
          color: ColorsManager.green,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),

          // BoxDecoration
          // shape:BoxShape.rectangle,
          // borderRadius:
          //     BorderRadius.circular(15),
        ),
        child:  Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: Styles.style22,
          ),
        ),
      ),
    );
  }
}
