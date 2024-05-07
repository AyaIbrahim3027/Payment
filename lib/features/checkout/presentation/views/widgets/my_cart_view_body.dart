import 'package:flutter/material.dart';
import 'package:payment/core/utils/assets.dart';
import 'package:payment/features/checkout/presentation/views/widgets/payment_methods_bottom_sheet.dart';
import 'package:payment/features/checkout/presentation/views/widgets/total_price.dart';
import '../../../../../core/utils/colors_manager.dart';
import 'cart_info_item.dart';
import '../../../../../core/widgets/custom_button.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(
            height: 18,
          ),
          Expanded(child: Image.asset(Assets.basket)),
          const SizedBox(
            height: 25,
          ),
          const CartInfoItem(
            title: 'Order Subtotal',
            value: r'$42.97',
          ),
          const SizedBox(
            height: 3,
          ),
          const CartInfoItem(
            title: 'Discount',
            value: r'$0',
          ),
          const SizedBox(
            height: 3,
          ),
          const CartInfoItem(
            title: 'Shipping',
            value: r'$8',
          ),
          const Divider(
            color: ColorsManager.grey,
            thickness: 2,
            height: 35,
            indent: 15,
            endIndent: 15,
          ),
          const TotalPrice(
            title: 'Total',
            value: r'$50.97',
          ),
          const SizedBox(
            height: 15,
          ),
          CustomButton(
            text: 'Complete Payment',
            onTap: () {
              // Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              //   return const PaymentDetailsView();
              // }));

              showModalBottomSheet(
                  context: context,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  builder: (context) {
                    return const PaymentMethodsBottomSheet();
                  });
            },
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
