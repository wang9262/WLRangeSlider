#import "ViewController.h"
#import "WLRangeSlider.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    WLRangeSlider *rangeSlider = [[WLRangeSlider alloc] initWithFrame:CGRectMake(20, 100, 280, 31)];
    [rangeSlider addTarget:self action:@selector(valueChanged:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:rangeSlider];
    dispatch_time_t time = dispatch_time(DISPATCH_TIME_NOW, 20 * NSEC_PER_SEC);
//    dispatch_after(time, dispatch_get_main_queue()) {
//        self.rangeSlider.trackHighlightTintColor = UIColor.redColor()
//        self.rangeSlider.curvaceousness = 0.0
//    };
    dispatch_after(time, dispatch_get_main_queue(), ^{
        rangeSlider.trackHighlightTintColor = [UIColor redColor];
        rangeSlider.thumbColor = [UIColor greenColor];
        rangeSlider.cornorRadiusScale = 0;
    });
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
