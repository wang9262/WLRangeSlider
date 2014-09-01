#import "WLSliderThumbLayer.h"
#import "WLRangeSlider.h"

@implementation WLSliderThumbLayer

- (void)drawInContext:(CGContextRef)ctx{
    if (_rangeSlider) {
        CGRect tempFrame = CGRectInset(self.bounds, 2, 2);
        CGFloat cornorRadius = CGRectGetHeight(tempFrame) * _rangeSlider.cornorRadiusScale / 2.0;
        UIBezierPath *thumbPath = [UIBezierPath bezierPathWithRoundedRect:tempFrame cornerRadius:cornorRadius];
        
        UIColor *shadowColor = [UIColor grayColor];
        CGContextSetShadowWithColor(ctx, CGSizeMake(0.0,1.0), 1.0, shadowColor.CGColor);
        CGContextSetFillColorWithColor(ctx, _rangeSlider.thumbColor.CGColor);
        CGContextAddPath(ctx, thumbPath.CGPath);
        CGContextFillPath(ctx);
        
        CGContextSetStrokeColorWithColor(ctx, shadowColor.CGColor);
        CGContextSetLineWidth(ctx, 0.5);
        CGContextAddPath(ctx, thumbPath.CGPath);
        CGContextStrokePath(ctx);
        
        if (_highlighted) {
            CGContextSetFillColorWithColor(ctx, [UIColor colorWithWhite:0.0 alpha:0.1].CGColor);
            CGContextAddPath(ctx, thumbPath.CGPath);
            CGContextFillPath(ctx);
        }
    }
}

- (void)setHighlighted:(BOOL)highlighted{
    _highlighted = highlighted;
    [self setNeedsDisplay];
}

@end
