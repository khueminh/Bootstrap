//
//  DictionaryArray.m
//  TechmasterApp
//
//  Created by Nguyen Minh Khue on 7/21/15.
//  Copyright (c) 2015 Techmaster. All rights reserved.
//

#import "DictionaryArray.h"

@interface DictionaryArray ()

@end

@implementation DictionaryArray

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSDictionary* dict = [NSDictionary dictionaryWithObjectsAndKeys:
                          [NSArray arrayWithObjects:@"About", @"Admin", @"Autumn", nil], @"A",
                          [NSArray arrayWithObjects:@"Bank", @"Black", @"Box", nil], @"B",
                          [NSArray arrayWithObjects:@"Class", @"Chicken", @"Children", nil], @"C",
                          [NSArray arrayWithObjects:@"Dictionary", @"Doctor", @"December", nil], @"D",
                          [NSArray arrayWithObjects:@"Egg", @"Eye", @"Envelope", nil], @"E",
                          [NSArray arrayWithObjects:@"File", @"Furniture", @"Friend", nil], @"F",
                          [NSArray arrayWithObjects:@"Goverment", @"Goose", @"Good", nil], @"G",
                          [NSArray arrayWithObjects:@"Hello", @"Human", @"House", nil], @"H",
                          [NSArray arrayWithObjects:@"International", @"Immediate", @"Integer", nil], @"I",
                          [NSArray arrayWithObjects:@"Jump", @"Jacket", @"Joke", nil], @"J",
                          [NSArray arrayWithObjects:@"Knife", @"King", @"Kick", nil], @"K",
                          [NSArray arrayWithObjects:@"Lamp", @"Look", @"Link", nil], @"L",
                          [NSArray arrayWithObjects:@"Money", @"Mother", @"Member", nil], @"M",
                          [NSArray arrayWithObjects:@"Number", @"Near", @"National", nil], @"N",
                          [NSArray arrayWithObjects:@"Operation", @"October", @"Open", nil], @"O",
                          [NSArray arrayWithObjects:@"Pen", @"Pea", @"Pump", nil], @"P",
                          [NSArray arrayWithObjects:@"Question", @"Queen", @"Quantity", nil], @"Q",
                          [NSArray arrayWithObjects:@"Root", @"Read", @"Right", nil], @"R",
                          [NSArray arrayWithObjects:@"Sunny", @"Sad", @"Simple", nil], @"S",
                          [NSArray arrayWithObjects:@"Tea", @"Teacher", @"Turn", nil], @"T",
                          [NSArray arrayWithObjects:@"Umbrella", @"Under", @"Up", nil], @"U",
                          [NSArray arrayWithObjects:@"Victory", @"Vacation", @"Vocal", nil], @"V",
                          [NSArray arrayWithObjects:@"Win", @"Women", @"While", nil], @"W",
                          [NSArray arrayWithObjects:@"Xmas", @"Xenon", @"X-ray", nil], @"X",
                          [NSArray arrayWithObjects:@"Youth", @"Yummy", @"Your", nil], @"Y",
                          [NSArray arrayWithObjects:@"Zoo", @"Zero", @"Zigzag", nil], @"Z",
                          nil];
    
    NSString *FindWord = @"Quantity";
    
    NSString *FirstChar = [FindWord substringToIndex:1];
    
    NSArray *FilterReturn = [dict objectForKey:FirstChar];
    
    bool resultFind;
    
    resultFind=false;
    
    for (int cnt =0; cnt<FilterReturn.count;cnt++)
    {
        if ([FilterReturn[cnt] isEqualToString:FindWord])
        {
            resultFind=true;
        }
        NSLog(@"%@", FilterReturn[cnt]);
    }
    
    if (resultFind)
    {
        NSLog(@"%@ found!",FindWord);
    }
    else
    {
        NSLog(@"%@ not found!",FindWord);
    }
    
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
