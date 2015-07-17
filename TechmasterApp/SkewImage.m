//
//  SkewImage.m
//  TechmasterApp
//
//  Created by Nguyen Minh Khue on 7/16/15.
//  Copyright (c) 2015 Techmaster. All rights reserved.
//

#import "SkewImage.h"

@interface SkewImage ()
@property (weak, nonatomic) IBOutlet UIImageView *ImageOrg;
@property (weak, nonatomic) IBOutlet UISlider *slider;

@end

@implementation SkewImage

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    UIImage *onSwitch = [UIImage imageNamed:@"steve-jobs.jpg"];
    [self.ImageOrg setImage:onSwitch];

    //self.ImageOrg.frame = CGRectMake(0, 0, imageWidth , imageHeight);
    self.ImageOrg.center = self.ImageOrg.superview.center;

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)sliderChanged:(id)sender {
    
    if ( self.ImageOrg.layer.anchorPoint.x > 0.0 )
    {
        CGPoint position = self.ImageOrg.layer.position;
        position.x -= self.ImageOrg.layer.bounds.size.width / 2.0;
        self.ImageOrg.layer.anchorPoint = CGPointMake( 0.0, 0.5 );
        self.ImageOrg.layer.position = position;
    }
    
    CATransform3D t = CATransform3DIdentity;
    t.m34 = -0.005;
    t = CATransform3DRotate( t, M_PI / 9.0, 0.0, 1.0, 0.0 );
    self.ImageOrg.layer.transform = t;
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
