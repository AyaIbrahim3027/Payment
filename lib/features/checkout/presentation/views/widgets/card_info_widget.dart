import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';

class CardInfoWidget extends StatelessWidget {
  const CardInfoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 305,
      padding: const EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 22,
      ),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            Assets.master_card,
          ),
          const SizedBox(
            width: 23,
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Credit Card',
                style: Styles.style18,),
              Text('Mastercard **78',
                style: Styles.style16,),
            ],
          ),
        ],
      ),
    );
  }
}
