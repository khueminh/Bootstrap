//
//  DemoSlider.m
//  TechmasterApp
//
//  Created by Nguyen Minh Khue on 7/4/15.
//  Copyright (c) 2015 Techmaster. All rights reserved.
//

#import "DemoSlider.h"

@interface DemoSlider ()
{
   
    __weak IBOutlet UILabel *SliderValue;
    __weak IBOutlet UIImageView *ImageView;
    __weak IBOutlet UISlider *slider;
    NSTimer* _timer;
}
@end

@implementation DemoSlider

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    _timer = [NSTimer scheduledTimerWithTimeInterval:0.1
                                              target:self
                                            selector:@selector(onTimer)
                                            userInfo:nil
                                             repeats:true];
    
    slider.transform = CGAffineTransformMakeRotation(-M_PI_2/2);
    slider.tintColor = [UIColor blueColor];
    slider.thumbTintColor = [UIColor orangeColor];
   // slider.backgroundColor = [UIColor grayColor];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) onTimer{
    
    slider.value += 0.05;
    if (slider.value>=1.0)
    {
        slider.value=1.0;
        [_timer invalidate];
    }
    
}


@end
