#import <QuartzCore/QuartzCore.h>

@class WLRangeSlider;
@interface WLSliderThumbLayer : CALayer

//whether highlighted
@property (nonatomic) BOOL highlighted;
//weak to avoid retain cycle
@property (nonatomic,weak) WLRangeSlider *rangeSlider;

@end
