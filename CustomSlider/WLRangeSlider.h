#import <UIKit/UIKit.h>

@interface WLRangeSlider : UIControl

@property (nonatomic) CGFloat maxValue;                             //default 1.0,the range is [0.0,1.0]
@property (nonatomic) CGFloat minValue;                             //default 0.0,the range is [0.0,1.0],and it must set to be less than or equal to max
@property (nonatomic) CGFloat leftValue;                            //default 0.1,range(0.0,1.0),and it must set to be bigger than or equal to min and less than or eauql to right
@property (nonatomic) CGFloat rightValue;                           //default 0.9,range(0.0,1.0),and it must set to be less than or equal to max and bigger than or eauql to left
@property (nonatomic) CGFloat cornorRadiusScale;                    //the thumb's cornor radius,default is 1.0,set 0 to get a square thumb and 1 to a circle one
@property (nonatomic,strong) UIColor *trackColor;                   //the track's color ,default is [UIColor colorWithWhite:0.9 alpha:1.0]
@property (nonatomic,strong) UIColor *thumbColor;                   //thumb's color,default is white
@property (nonatomic,strong) UIColor *trackHighlightTintColor;      //highlighted color for track ,defualt is [UIColor colorWithRed:0.0 green:0.45 blue:0.94 alpha:1.0]

- (CGFloat)positionForValue:(CGFloat)value;                         //to caculate the position for a given value,what's more the value should be set between 0 and 1

@end
