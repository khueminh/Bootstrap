//
//  SliderAdvancedL1.m
//  TechmasterApp
//
//  Created by Nguyen Minh Khue on 7/7/15.
//  Copyright (c) 2015 Techmaster. All rights reserved.
//

#import "SliderAdvancedL1.h"

@interface SliderAdvancedL1 ()
{
    
    __weak IBOutlet UILabel *sliderValue;
    __weak IBOutlet UISlider *slider;
    NSTimer* _timer;
    
}

@end

@implementation SliderAdvancedL1
- (IBAction)sliderChange:(id)sender {
     sliderValue.text = [NSString stringWithFormat:@"%g %%", round(slider.value *  100)];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
   
    
    [slider setThumbImage:[UIImage imageNamed:@"SliderThumb.png"] forState:UIControlStateNormal];
    
    //Tao ảnh nền
    UIGraphicsBeginImageContext(self.view.frame.size);
    [[UIImage imageNamed:@"slider-background-01.png"] drawInRect:self.view.bounds];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    self.view.backgroundColor = [UIColor colorWithPatternImage:image];
    
    //Tao goc cho Slider
    slider.layer.cornerRadius = 12.0;
    
    //Vien cua Slider
    slider.layer.borderWidth    = 0.5;
    
    //Mau nen Slider
    slider.backgroundColor = [UIColor colorWithRed:80.0f/255.0f green:79.0f/255.0f blue:75.0f/255.0f alpha:1.0f];//[UIColor  lightGrayColor];
    
    sliderValue.text = @"0 %";
    

    //UIImage *minImage = [UIImage imageNamed: @"min.png"];
    UIImage *maxImage = [UIImage imageNamed: @"max.png"];
    
    //minImage = [minImage stretchableImageWithLeftCapWidth: 10.0 topCapHeight: 0.0];
    //maxImage = [maxImage stretchableImageWithLeftCapWidth: 10.0 topCapHeight: 0.0];
    
    //[slider setMinimumTrackImage: minImage forState: UIControlStateNormal];
    [slider setMaximumTrackImage:maxImage forState:UIControlStateNormal];

    //[slider setMinimumTrackImage:[[UIImage imageNamed:@"minimumSlider"] resizableImageWithCapInsets:UIEdgeInsetsMake(5, 5, 5, 5)] forState:UIControlStateNormal];
    
    //[slider setMaximumTrackImage:[[UIImage imageNamed:@"maximumSlider"] resizableImageWithCapInsets:UIEdgeInsetsMake(5, 5, 5, 5)] forState:UIControlStateNormal];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
