//
//  BootLogic.m
//  TechmasterApp
//
//  Created by techmaster on 9/7/14.
//  Copyright (c) 2014 Techmaster. All rights reserved.
//

#import "BootLogic.h"
#import "MainScreen.h"


@implementation BootLogic
+ (void) boot: (UIWindow*) window
{
    MainScreen* mainScreen = [[MainScreen alloc] initWithStyle:UITableViewStyleGrouped];
    //--------- From this line, please customize your menu data -----------
    NSDictionary* basic = @{SECTION: @"Basic", MENU: @[
                                    @{TITLE: @"Demo Slider", CLASS: @"DemoSlider"},
                                    @{TITLE: @"Demo Selector", CLASS: @"DemoSelector"}
                          ]};
//    NSDictionary* intermediate = @{SECTION: @"Demo", MENU: @[
//                                    @{TITLE: @"UISwitch", CLASS: @"newSwitch"},
//                                    @{TITLE: @"Skew Image", CLASS: @"SkewImage"}
//                                   
//                                  ]};

    NSDictionary* uiviewdemo = @{SECTION: @"UIView Demo", MENU: @[
                                    @{TITLE: @"Basic UIView", CLASS: @"BasicView"},
                                    @{TITLE: @"Chess UIView", CLASS: @"ChessView"},
                                    @{TITLE: @"Flying Bird", CLASS: @"FlyingBird"},
                                    @{TITLE: @"CampFire", CLASS: @"CampFire"}
                                   ]};
    
    NSDictionary* quicksortDemo = @{SECTION: @"QuickSort Demo", MENU: @[
                                         @{TITLE: @"QuickSort Number", CLASS: @"QuickSortNumber"},
                                         @{TITLE: @"QuickSort String", CLASS: @"QuickSortNSString"}
                                         
                                         
                                         ]};
    NSDictionary* ArrayCategory = @{SECTION: @"Category Demo", MENU: @[
                                        @{TITLE: @"Count Words", CLASS: @"CountWords"}
    
    
                                       ]};
    
    
    NSDictionary* SliderAdv = @{SECTION: @"UISlider Advanced", MENU: @[
                                         @{TITLE: @"UISlider Level 1", CLASS: @"SliderAdvancedL1"},
                                         @{TITLE: @"UISlider Level 2", CLASS: @"UISliderAdvanced"}
                                         ]};

//    NSDictionary* EightQueensDemo = @{SECTION: @"8Queens Demo", MENU: @[
//                                        @{TITLE: @"Eight Queens", CLASS: @"EightQueens"}
//                                        
//                                        
//                                        ]};

    
    mainScreen.menu = @[basic, quicksortDemo, ArrayCategory, uiviewdemo, SliderAdv];
    mainScreen.title = @"Bootstrap App";
    mainScreen.about = @"This is demo bootstrap demo app. It is collection of sample code of AVFoundation";
    //--------- End of customization -----------
    UINavigationController* nav = [[UINavigationController alloc] initWithRootViewController: mainScreen];
    
    window.rootViewController = nav;
}
@end
