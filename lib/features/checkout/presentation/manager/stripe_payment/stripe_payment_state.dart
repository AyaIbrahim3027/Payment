part of 'stripe_payment_cubit.dart';

@immutable
abstract class StripePaymentState {}

class StripePaymentInitial extends StripePaymentState {}
class StripePaymentLoading extends StripePaymentState {}
class StripePaymentSuccess extends StripePaymentState {}
class StripePaymentFailure extends StripePaymentState {
  final String errMessage;
  StripePaymentFailure(this.errMessage);
}

