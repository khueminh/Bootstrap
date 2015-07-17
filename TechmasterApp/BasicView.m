//
//  BasicView.m
//  TechmasterApp
//
//  Created by Nguyen Minh Khue on 7/16/15.
//  Copyright (c) 2015 Techmaster. All rights reserved.
//

#import "BasicView.h"

@interface BasicView ()
{
    CGAffineTransform rotateTransform;
    CGAffineTransform scalaTransform;
}
@property (weak, nonatomic) IBOutlet UIView *myView;
@property (weak, nonatomic) IBOutlet UISlider *rotateSlider;
@property (weak, nonatomic) IBOutlet UISlider *scaleSlider;

@end

@implementation BasicView

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (IBAction)onAlphaChange:(UISlider*)sender {
    self.myView.alpha  = (CGFloat)sender.value;
}

- (IBAction)onShow:(UISwitch *)sender {
    self.myView.hidden   = !sender.on;
}

- (IBAction)onRotateChange:(id)sender {
    [self rotateAndScale];
}

- (IBAction)onScaleChange:(id)sender {
    [self rotateAndScale];
}

- (void) rotateAndScale
{
    rotateTransform =CGAffineTransformMakeRotation((CGFloat)self.rotateSlider.value * (CGFloat)M_PI);
    scalaTransform = CGAffineTransformMakeScale((CGFloat)self.scaleSlider.value, (CGFloat)self.scaleSlider.value);
    self.myView.transform = CGAffineTransformConcat(rotateTransform, scalaTransform);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)onColorChange:(UISegmentedControl *)sender {
    
    switch (sender.selectedSegmentIndex) {
        case 0:
            self.myView.backgroundColor = [UIColor blackColor];
            break;
        case 1:
            self.myView.backgroundColor = [UIColor redColor];
            break;
        case 2:
            self.myView.backgroundColor = [UIColor greenColor];
            break;
        case 3:
            self.myView.backgroundColor = [UIColor blueColor];
            break;
        default:
            break;
    }
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
