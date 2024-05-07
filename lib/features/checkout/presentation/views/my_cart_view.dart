import 'package:flutter/material.dart';
import 'package:payment/features/checkout/presentation/views/widgets/my_cart_view_body.dart';
import '../../../../core/widgets/custom_app_bar.dart';

class MyCardView extends StatelessWidget {
  const MyCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: "My Cart"),
      body: const MyCartViewBody(),
    );
  }

}
