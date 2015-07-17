//
//  DemoSelector.m
//  TechmasterApp
//
//  Created by Nguyen Minh Khue on 7/7/15.
//  Copyright (c) 2015 Techmaster. All rights reserved.
//

#import "DemoSelector.h"

@interface DemoSelector ()
@property (weak, nonatomic) IBOutlet UISlider *slider;

@end

@implementation DemoSelector

- (void)viewDidLoad {
    [super viewDidLoad];

    //Sau 2 giay thi thuc hien ham trong Selector

    [self performSelector:@selector(hideSlider) withObject:nil afterDelay:2]; }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)onCrunchData:(id)sender {
    //[self performSelectorInBackground:@selector(doCrunchData) withObject:nil];
    
    [self performSelectorOnMainThread:@selector(doCrunchData)
                           withObject:nil waitUntilDone:true];
    
    [self performSelectorOnMainThread:@selector(processData:)
                           withObject:@{@"Apple":@"Táo",@"Lemon":@"Chanh"} waitUntilDone:true];
}

-(void) processData:(NSDictionary*) data{
    for (NSString* key in [data allKeys])
    {
        NSLog(@"%@ - %@", key, [data valueForKey:key]);
    }
}


-(void) doCrunchData{
    
    [NSThread sleepForTimeInterval:2]; //second
}

-(void) hideSlider{
    self.slider.hidden=true;
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
