
#if __has_include(<React/RCTBridgeModule.h>)
#import <React/RCTBridgeModule.h>
#else
#import "RCTBridgeModule.h"
#endif

@class ImageScannerController;
@class ImageScannerControllerDelegate;

@interface RNWescan : NSObject <RCTBridgeModule>
@property (nonatomic, strong) RCTResponseSenderBlock callback;

@end
  
