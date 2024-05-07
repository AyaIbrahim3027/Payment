import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:payment/core/utils/colors_manager.dart';

import '../../../../../core/utils/assets.dart';

class PaymentDetailsViewBody extends StatelessWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 103,
          height: 62,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1.5, color: ColorsManager.green),
              borderRadius: BorderRadius.circular(15),
            ),
            shadows: [
              BoxShadow(
                  color: ColorsManager.green,
                  blurRadius: 4,
                  offset: Offset(0, 0),
                  spreadRadius: 0)
            ],
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
            child: Center(child: SvgPicture.asset(Assets.card, height: 25)),
          ),
        ),
      ],
    );
  }
}
