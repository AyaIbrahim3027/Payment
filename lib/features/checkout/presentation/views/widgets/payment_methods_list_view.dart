import 'package:flutter/material.dart';
import 'package:payment/features/checkout/presentation/views/widgets/payment_method_item.dart';

import '../../../../../core/utils/assets.dart';

class PaymentMethodsListView extends StatelessWidget {
  PaymentMethodsListView({
    super.key,
  });

  final List<String> paymentMethodsItems =  [
    Assets.card,
    Assets.paypal,
    Assets.applepay,
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: paymentMethodsItems.length,
        itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: PaymentMethodItem(
              isActive: false,
              image: paymentMethodsItems[index],
            ),
          );
        },
      ),
    );
  }
}
