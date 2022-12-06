#import "PaymentVnpayPlugin.h"
#if __has_include(<payment_vnpay/payment_vnpay-Swift.h>)
#import <payment_vnpay/payment_vnpay-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "payment_vnpay-Swift.h"
#endif

@implementation PaymentVnpayPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftPaymentVnpayPlugin registerWithRegistrar:registrar];
}
@end
