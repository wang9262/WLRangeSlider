#import "WLTrackLayer.h"
#import "WLRangeSlider.h"

@implementation WLTrackLayer

- (void)drawInContext:(CGContextRef)ctx{
    if (_rangeSlider) {
        CGFloat cornorRadius = CGRectGetHeight(self.bounds) * _rangeSlider.cornorRadiusScale / 2.0;
        UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:self.bounds cornerRadius:cornorRadius];
        CGContextAddPath(ctx, path.CGPath);
        
        CGContextSetFillColorWithColor(ctx, _rangeSlider.trackColor.CGColor);
        CGContextAddPath(ctx, path.CGPath);
        CGContextFillPath(ctx);
        
        CGContextSetFillColorWithColor(ctx, _rangeSlider.trackHighlightTintColor.CGColor);
        CGFloat leftValuePosition = [_rangeSlider positionForValue:_rangeSlider.leftValue];
        CGFloat rightValuePosition = [_rangeSlider positionForValue:_rangeSlider.rightValue];
        CGRect rect = CGRectMake(leftValuePosition,0.0,rightValuePosition - leftValuePosition,CGRectGetHeight(self.bounds));
        CGContextFillRect(ctx, rect);
    }
}

@end
