import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:payment_vnpay/payment_vnpay_method_channel.dart';

void main() {
  MethodChannelPaymentVnpay platform = MethodChannelPaymentVnpay();
  const MethodChannel channel = MethodChannel('payment_vnpay');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
