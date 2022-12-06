import 'package:flutter_test/flutter_test.dart';
import 'package:payment_vnpay/payment_vnpay.dart';
import 'package:payment_vnpay/payment_vnpay_platform_interface.dart';
import 'package:payment_vnpay/payment_vnpay_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockPaymentVnpayPlatform 
    with MockPlatformInterfaceMixin
    implements PaymentVnpayPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final PaymentVnpayPlatform initialPlatform = PaymentVnpayPlatform.instance;

  test('$MethodChannelPaymentVnpay is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelPaymentVnpay>());
  });

  test('getPlatformVersion', () async {
    PaymentVnpay paymentVnpayPlugin = PaymentVnpay();
    MockPaymentVnpayPlatform fakePlatform = MockPaymentVnpayPlatform();
    PaymentVnpayPlatform.instance = fakePlatform;
  
    expect(await paymentVnpayPlugin.getPlatformVersion(), '42');
  });
}
