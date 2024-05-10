import 'package:dartz/dartz.dart';
import 'package:payment/features/checkout/data/models/payment_intent_input_model.dart';

import '../../../../core/errors/failures.dart';

abstract class CheckOutRepo {
  Future<Either<Failure, void>> makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel});
}
