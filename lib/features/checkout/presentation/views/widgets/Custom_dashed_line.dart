import 'package:flutter/material.dart';

import '../../../../../core/utils/colors_manager.dart';

class CustomDashedLine extends StatelessWidget {
  const CustomDashedLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
          30,
              (index) => Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2),
              child: Container(
                height: 2,
                color: ColorsManager.grey3,
              ),
            ),
          )),
    );
  }
}
