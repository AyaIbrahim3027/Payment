import 'package:flutter/material.dart';
import 'package:payment/core/utils/assets.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 15,),
        Image.asset(Assets.basket),
      ],
    );
  }
}
