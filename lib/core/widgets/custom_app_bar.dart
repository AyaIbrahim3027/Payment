import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/assets.dart';
import '../utils/styles.dart';

AppBar buildAppBar({String? title}) {
  return AppBar(
    leading: Center(
      child: SvgPicture.asset(
        Assets.arrow,
      ),
    ),
    elevation: 0,
    backgroundColor: Colors.transparent,
    centerTitle: true,
    title:  Text(
      title ?? '',
      textAlign: TextAlign.center,
      style: Styles.style25,
    ),
  );
}
