#import <QuartzCore/QuartzCore.h>

@class WLRangeSlider;
@interface WLTrackLayer : CALayer

//weak to avoid retain cycle
@property (weak,nonatomic) WLRangeSlider *rangeSlider;

@end
