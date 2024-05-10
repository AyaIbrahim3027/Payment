import 'package:dartz/dartz.dart';

import 'package:payment/core/errors/failures.dart';
import 'package:payment/core/utils/stripe_service.dart';

import 'package:payment/features/checkout/data/models/payment_intent_input_model.dart';

import 'checkout_repo.dart';

class CheckOutRepoImpl extends CheckOutRepo {
  final StripeService stripeService = StripeService();
  @override
  Future<Either<Failure, void>> makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    try {
      await stripeService.makePayment(
          paymentIntentInputModel: paymentIntentInputModel);
      return right(null);
    } catch (e) {
      return left(ServerFailure(errMessage: e.toString()));
    }
  }
}
