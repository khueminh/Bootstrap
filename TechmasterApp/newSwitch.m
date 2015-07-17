//
//  newSwitch.m
//  TechmasterApp
//
//  Created by Nguyen Minh Khue on 7/16/15.
//  Copyright (c) 2015 Techmaster. All rights reserved.
//

#import "newSwitch.h"

@interface newSwitch ()
{
    
    __weak IBOutlet UIButton *buttonSwitch;
    __weak IBOutlet UIButton *newSwitch;
    bool _buttonClick;
}
@end

@implementation newSwitch

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    [self.view setBackgroundColor:[UIColor colorWithRed:61.0f/255.0f green:62.0f/255.0f blue:64.0f/255.0f alpha:1.0]];
  
    [buttonSwitch setTitle:@"" forState:UIControlStateNormal];

    UIImage *onSwitch = [UIImage imageNamed:@"offLight.png"];
    UIImageView *_imageView = [[UIImageView alloc] initWithImage:onSwitch];
    [buttonSwitch setBackgroundImage:onSwitch forState:UIControlStateNormal];
    [buttonSwitch setFrame:CGRectMake(100, 200, _imageView.frame.size.width, _imageView.frame.size.height)];
    _buttonClick=false;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)buttonTap:(id)sender {

        //UIButton *button = (UIButton *)sender;
        
        if(_buttonClick)
            
        {
            _buttonClick=false;
            UIImage *onSwitch = [UIImage imageNamed:@"offLight.png"];
            UIImageView *_imageView = [[UIImageView alloc] initWithImage:onSwitch];
            [buttonSwitch setBackgroundImage:onSwitch forState:UIControlStateNormal];
            [buttonSwitch setFrame:CGRectMake(100, 200, _imageView.frame.size.width, _imageView.frame.size.height)];
        }
        
        else
            
        {
            
            _buttonClick=true;
            UIImage *onSwitch = [UIImage imageNamed:@"onLight.png"];
            UIImageView *_imageView = [[UIImageView alloc] initWithImage:onSwitch];
            [buttonSwitch setBackgroundImage:onSwitch forState:UIControlStateNormal];
            [buttonSwitch setFrame:CGRectMake(100, 200, _imageView.frame.size.width, _imageView.frame.size.height)];
        }
    
        
    
}


@end
