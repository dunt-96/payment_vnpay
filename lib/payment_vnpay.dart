import 'payment_vnpay_platform_interface.dart';

class PaymentVnpay {
  Future<String?> getPlatformVersion() {
    return PaymentVnpayPlatform.instance.getPlatformVersion();
  }

  Future<String?> testFunc() {
    return PaymentVnpayPlatform.instance.testFunc();
  }
}
