#import "BVDashedBorderViewManager.h"
#import "BVDashedBorderView.h"
#import "RCTBridge.h"

@implementation BVDashedBorderViewManager

RCT_EXPORT_MODULE();

@synthesize bridge = _bridge;

- (UIView *)view
{
  return [[BVDashedBorderView alloc] init];
}

@end
