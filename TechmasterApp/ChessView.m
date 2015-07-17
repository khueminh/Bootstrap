//
//  ChessView.m
//  TechmasterApp
//
//  Created by Nguyen Minh Khue on 7/16/15.
//  Copyright (c) 2015 Techmaster. All rights reserved.
//

#import "ChessView.h"

@interface ChessView ()
{
    CGFloat margin;
    CGFloat h0;
    UIView *containerView;
    CGFloat cellWidth;
    CGRect rect;
    UIView *cell;
    UISlider *slider;
}
@end

@implementation ChessView

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    margin = 10.0;
    h0 = 160.0;
    
    self.view.backgroundColor  = [UIColor grayColor];
    
    containerView = [UIView new];
    
    containerView.frame = CGRectMake(0, 0, (self.view.bounds.size.width - margin * 2.0), (self.view.bounds.size.width - margin * 2.0));
    
    containerView.backgroundColor = [UIColor blackColor];
    [self.view addSubview:containerView];
    
    containerView.center = CGPointMake(self.view.bounds.size.width/2, self.view.bounds.size.height/2);
    
    cellWidth = (self.view.bounds.size.width - margin * 2.0) / 8.0;
    
    for (int rowIndex=0;rowIndex<=7;rowIndex++)
    {
        for (int colIndex = 0; colIndex<=7; colIndex++)
        {
            cell = [UIView new];
            rect = CGRectMake((CGFloat)colIndex * cellWidth, (CGFloat)rowIndex * cellWidth, cellWidth, cellWidth);
            cell.frame = rect;
            
            if ((rowIndex % 2) ==0)
            {
                if ((colIndex % 2) ==0)
                    cell.backgroundColor = [UIColor blackColor];
                else
                    cell.backgroundColor = [UIColor whiteColor];
            }
            else
            {
                if ((colIndex % 2) ==0)
                    cell.backgroundColor = [UIColor whiteColor];
                else
                    cell.backgroundColor = [UIColor blackColor];
            }
            [containerView addSubview:cell];
            
        }
    }
    
    slider = [UISlider new];
    slider.frame = CGRectMake(20, self.view.bounds.size.height - 100, self.view.bounds.size.width-40, 10);
    
    slider.maximumValue=1;
    slider.minimumValue=-1;
    slider.value = 0;
    slider.enabled = true;
    [slider addTarget:self action:@selector(onRotate:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:slider];
}

- (IBAction)onRotate: (UISlider*) sender{
    containerView.transform = CGAffineTransformMakeRotation((CGFloat)sender.value * (CGFloat)M_PI);
   
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
