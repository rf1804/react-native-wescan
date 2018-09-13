
#import "RNWescan.h"
#import "RNWescan-Swift.h"
//#import <RNWescan.xcworkspace/RNWescan-Swift.h>

//@interface RNWescan() <ImageScannerControllerDelegate>
//
//@end


@implementation RNWescan

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}
RCT_EXPORT_MODULE()
RCT_EXPORT_METHOD(scanDocument:(RCTResponseSenderBlock)callback) {
    
    self.callback = callback;

    ImageScannerController *scannerVC = [[ImageScannerController alloc] init];
    
    UIViewController *root = [[[UIApplication sharedApplication] delegate] window].rootViewController;
    [root presentViewController:scannerVC animated:true completion:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(weScanPostData:) name:@"WEScanImagePost" object:nil];
}


-(void)weScanPostData:(NSNotification *)notification
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    
    NSLog(@"asdfsf - %@", [notification userInfo]);
    self.callback(@[[notification userInfo]]); // Return callback for 'cancel' action (if is required)
}

@end
  
