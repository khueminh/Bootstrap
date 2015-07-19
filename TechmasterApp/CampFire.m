//
//  CampFire.m
//  TechmasterApp
//
//  Created by Nguyen Minh Khue on 7/19/15.
//  Copyright (c) 2015 Techmaster. All rights reserved.
//

#import "CampFire.h"

@interface CampFire ()
{
    UIImageView *fire;
}
@end

@implementation CampFire
-(void) loadView{
    [super loadView];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor blackColor];
    self.edgesForExtendedLayout = UIRectEdgeNone; //Goc nhin toan man hinh
    [self burnFire];
}
- (void) burnFire{
    fire = [[UIImageView alloc] initWithFrame:self.view.bounds];
    NSMutableArray *images = [[NSMutableArray alloc] initWithCapacity:17];
    for (int i=1; i<=17;i++)
    {
        NSString* fileName;
        if (i<10){
            fileName = [NSString stringWithFormat:@"campFire0%d.gif",i];
        }
        else{
            fileName = [NSString stringWithFormat:@"campFire%d.gif",i];
        }
        [images addObject:[UIImage imageNamed:fileName]];
    }
    fire.animationImages = images;
    fire.animationDuration = 1;
    fire.animationRepeatCount = 0; //so lan lap lai, 0 lap lai mai mai
    [self.view addSubview:fire];
    [fire startAnimating];
}

@end
