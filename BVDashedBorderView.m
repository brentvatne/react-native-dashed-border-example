#import "BVDashedBorderView.h"
#import "RCTConvert.h"
#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@implementation BVDashedBorderView {
  CAShapeLayer *_border;
}

- (instancetype)init
{
  if ((self = [super init])) {
    _border = [CAShapeLayer layer];
    _border.strokeColor = [UIColor colorWithRed:67/255.0f green:37/255.0f blue:83/255.0f alpha:1].CGColor;
    _border.fillColor = nil;
    _border.lineDashPattern = @[@4, @2];
    [self.layer addSublayer:_border];
  }

  return self;
}

- (void)layoutSubviews
{
  [super layoutSubviews];
  _border.path = [UIBezierPath bezierPathWithRect:self.bounds].CGPath;
  _border.frame = self.bounds;
}

@end
