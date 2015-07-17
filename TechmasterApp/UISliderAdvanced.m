//
//  UISliderAdvanced.m
//  TechmasterApp
//
//  Created by Nguyen Minh Khue on 7/16/15.
//  Copyright (c) 2015 Techmaster. All rights reserved.
//

#import "UISliderAdvanced.h"

@interface UISliderAdvanced ()
@property (weak, nonatomic) IBOutlet UISlider *slider;
@property (strong, nonatomic) UILabel* label;
@property (strong, nonatomic) UIView* trackView;
@property (strong, nonatomic) UIImageView* _imageView;
@end

@implementation UISliderAdvanced

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    //Tao ảnh nền
    UIGraphicsBeginImageContext(self.view.frame.size);
    [[UIImage imageNamed:@"slider-background-01.png"] drawInRect:self.view.bounds];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    self.view.backgroundColor = [UIColor colorWithPatternImage:image];
    
    //Tao Thumb cho Slider
    UIImage *thumb = [UIImage imageNamed:@"SliderThumb.png"];
    
    [self.slider setThumbImage:thumb forState:UIControlStateNormal];
    
    
    //self.slider.backgroundColor = [UIColor clearColor];
    //self.slider.alpha = 1.0;
    
    
    UIImage *popup = [UIImage imageNamed:@"sliderlabel.png"];
    
    self.trackView = [UIView new];
    UIImageView *_imageView = [[UIImageView alloc] initWithImage:popup];
    [self.trackView addSubview:_imageView];
    
    self.label = [UILabel new];
    self.label.textColor = [UIColor whiteColor];
    self.label.text = [NSString stringWithFormat:@"%g %%", round(self.slider.value *  100)];
    self.label.textAlignment = NSTextAlignmentCenter;
    self.label.frame = CGRectMake(0, 0, _imageView.frame.size.width, _imageView.frame.size.height);
    [self.trackView addSubview:self.label];
    
    CGRect zeThumbRect = [self computeLabelPosition:self.slider.value];
    self.trackView.frame = CGRectInset(zeThumbRect, -17, 3);
    
    [self.slider addSubview:self.trackView];

}

-(CGRect)thumbRect {
    CGRect sliderBound = self.slider.bounds;
    CGRect trackRect = [self.slider trackRectForBounds:sliderBound];
    CGRect thumbRect = [self.slider thumbRectForBounds:sliderBound
                                        trackRect:trackRect value:self.slider.value];
    return thumbRect;
}
- (void) moveLabel: (float)sliderValue {
    
    
    UIImage *popup = [UIImage imageNamed:@"sliderlabel.png"];
    UIImageView *_imageView = [[UIImageView alloc] initWithImage:popup];
    
    self.label.text = [NSString stringWithFormat:@"%g %%", round(self.slider.value *  100)];
    self.label.frame = CGRectMake(0, 0, _imageView.frame.size.width, _imageView.frame.size.height);
    
    CGRect zeThumbRect = [self computeLabelPosition:self.slider.value];
    self.trackView.frame = CGRectInset(zeThumbRect, -17, 3);
}

- (CGRect) computeLabelPosition: (float)sliderValue {
    CGRect sliderBound = self.slider.bounds;
    CGRect trackRect = [self.slider trackRectForBounds:sliderBound];
    CGRect thumbRect = [self.slider thumbRectForBounds:sliderBound
                                        trackRect:trackRect value:self.slider.value];
//    NSLog(@"x= %3.0f, y=%3.0f, width= %3.0f, height =%3.0f", thumbRect.origin.x, thumbRect.origin.y, thumbRect.size.width, thumbRect.size.height);
    thumbRect.origin = CGPointMake(thumbRect.origin.x, -50);
    return thumbRect;
    
}
- (IBAction)sliderChanged:(id)sender {
    [self moveLabel: self.slider.value];
}


@end
