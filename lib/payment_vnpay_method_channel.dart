import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'payment_vnpay_platform_interface.dart';

/// An implementation of [PaymentVnpayPlatform] that uses method channels.
class MethodChannelPaymentVnpay extends PaymentVnpayPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('payment_vnpay');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  @override
  Future<String?> testFunc() async {
    final version = await methodChannel.invokeMethod<String>('testFunc');
    return version;
  }
}
