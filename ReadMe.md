#Usage
drag the `WLRangeSlider` fold to your project,and use the code as follows:

	WLRangeSlider *rangeSlider = [[WLRangeSlider alloc] initWithFrame:CGRectMake(20, 100, 280, 31)];
	[rangeSlider addTarget:self action:@selector(valueChanged:) forControlEvents:UIControlEventValueChanged];
	[self.view addSubview: rangeSlider];
	//you can change the left/right value,and set different color for track and left/right thumbs,also the cornorRadius of the thumb.like this
	rangeSlider.trackHighlightTintColor = [UIColor redColor];
	rangeSlider.thumbColor = [UIColor greenColor];
	rangeSlider.cornorRadiusScale = 0;
To find more,just try it out!Have fun,and give the pull reuest without hesitation!

#TODO
- use image to set the track and thumb.
	
![](/demo.gif)