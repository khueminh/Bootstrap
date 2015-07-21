//
//  EightQueens.m
//  TechmasterApp
//
//  Created by Nguyen Minh Khue on 7/19/15.
//  Copyright (c) 2015 Techmaster. All rights reserved.
//

#import "EightQueens.h"

@interface EightQueens ()

{
    bool KhongCoQuanHau[8];
    int QuanHau[8];
    bool KhongCoQuanDuongCheoPhai[16];
    bool KhongCoQuanDuongCheoTrai[16];
}

@end

@implementation EightQueens

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    for (int soluong=1;soluong<=8;soluong++)
    {
        KhongCoQuanHau[soluong]=true;
    }
    for (int soluong=1;soluong<=16;soluong++)
    {
        KhongCoQuanDuongCheoPhai[soluong]=true;
    }
    for (int soluong=1;soluong<=16;soluong++)
    {
        KhongCoQuanDuongCheoTrai[soluong]=true;
    }
    [self tryQueens:1];
}

- (void) tryQueens: (NSInteger) numberOfQueens
{
    for (int colQ = 1; colQ<=8; colQ ++)
    {
        if (KhongCoQuanHau[colQ] && KhongCoQuanDuongCheoPhai[numberOfQueens+colQ] &&
            KhongCoQuanDuongCheoTrai[numberOfQueens-colQ])
            {
                QuanHau[numberOfQueens]=colQ;
                KhongCoQuanHau[colQ]=false;
                KhongCoQuanDuongCheoPhai[numberOfQueens + colQ]=false;
                KhongCoQuanDuongCheoTrai[numberOfQueens - colQ]=false;
                if (numberOfQueens<8)
                {
                    [self tryQueens:numberOfQueens+1];
                }
                else
                {
                    for (int soluong=1;soluong<=8;soluong++)
                    {
                        NSLog(@"%d",QuanHau[soluong]);
                    }
                    
                    KhongCoQuanHau[colQ]=true;
                    KhongCoQuanDuongCheoPhai[numberOfQueens + colQ]=true;
                    KhongCoQuanDuongCheoTrai[numberOfQueens - colQ]=true;
                }
            }
    }
}

@end
