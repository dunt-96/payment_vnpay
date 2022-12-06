import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'payment_vnpay_method_channel.dart';

abstract class PaymentVnpayPlatform extends PlatformInterface {
  /// Constructs a PaymentVnpayPlatform.
  PaymentVnpayPlatform() : super(token: _token);

  static final Object _token = Object();

  static PaymentVnpayPlatform _instance = MethodChannelPaymentVnpay();

  /// The default instance of [PaymentVnpayPlatform] to use.
  ///
  /// Defaults to [MethodChannelPaymentVnpay].
  static PaymentVnpayPlatform get instance => _instance;
  
  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [PaymentVnpayPlatform] when
  /// they register themselves.
  static set instance(PaymentVnpayPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<String?> testFunc() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
