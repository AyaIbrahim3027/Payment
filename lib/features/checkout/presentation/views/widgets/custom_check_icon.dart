import 'package:flutter/material.dart';

import '../../../../../core/utils/colors_manager.dart';

class CustomCheckIcon extends StatelessWidget {
  const CustomCheckIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 50,
      backgroundColor: ColorsManager.grey2,
      child: CircleAvatar(
        radius: 40,
        backgroundColor: ColorsManager.green,
        child: Icon(
          Icons.check,
          color: Colors.white,
          size: 50,
        ),
      ),
    );
  }
}
