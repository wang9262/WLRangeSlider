#import "ViewController.h"
#import "WLRangeSlider.h"

@interface ViewController ()

@property (nonatomic,strong)WLRangeSlider *rangeSlider;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    _rangeSlider = [[WLRangeSlider alloc] initWithFrame:CGRectMake(20, 100, 280, 31)];
    [_rangeSlider addTarget:self action:@selector(valueChanged:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:_rangeSlider];
//    dispatch_time_t time = dispatch_time(DISPATCH_TIME_NOW, 20 * NSEC_PER_SEC);
//    dispatch_after(time, dispatch_get_main_queue()) {
//        self.rangeSlider.trackHighlightTintColor = UIColor.redColor()
//        self.rangeSlider.curvaceousness = 0.0
//    };
//    dispatch_after(time, dispatch_get_main_queue(), ^{
//        rangeSlider.trackHighlightTintColor = [UIColor redColor];
//        rangeSlider.thumbColor = [UIColor greenColor];
//        rangeSlider.cornorRadiusScale = 0;
//    });
    UISwitch *defaultSwitch = [[UISwitch alloc] init];
    [defaultSwitch addTarget:self action:@selector(switchCornorRadius:) forControlEvents:UIControlEventValueChanged];
    defaultSwitch.center = self.view.center;
    defaultSwitch.on = YES;
    [self.view addSubview:defaultSwitch];
}

- (void)switchCornorRadius:(UISwitch *)sender{
    if (sender.on) {
        _rangeSlider.trackHighlightTintColor = [UIColor blueColor];
        _rangeSlider.thumbColor = [UIColor whiteColor];
        _rangeSlider.cornorRadiusScale = 1;
    }else{
        _rangeSlider.trackHighlightTintColor = [UIColor redColor];
        _rangeSlider.thumbColor = [UIColor greenColor];
        _rangeSlider.cornorRadiusScale = 0;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)valueChanged:(WLRangeSlider *)slider{
    NSLog(@"....");
}

@end
