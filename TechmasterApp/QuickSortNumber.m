//
//  QuickSortNumber.m
//  TechmasterApp
//
//  Created by Nguyen Minh Khue on 7/17/15.
//  Copyright (c) 2015 Techmaster. All rights reserved.
//

#import "QuickSortNumber.h"
#import "stdlib.h"

@interface QuickSortNumber ()
{
    //int MaTranSoTuNhien[sizeof(NSUInteger)][sizeof(NSUInteger)];//mang
    
    int _numberOfCol; //so luong cot
    int _numberOfRow; //so luong hang
    
    
    //NSMutableArray *array;
    NSString *chuoi;
    
}

@end

@implementation QuickSortNumber

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _numberOfRow = 8;
    _numberOfCol = 8;
    
    NSNumber *giatri;
    
    [self writeln:@"Tao Mang"];
    
    NSMutableArray* InputQuickSortArray= [[NSMutableArray alloc]  initWithCapacity:_numberOfCol+_numberOfRow];
    
    for (int row = 0; row <_numberOfRow ; row ++)
    {
        for (int col = 0; col < _numberOfCol ; col++)
        {
            giatri = [NSNumber numberWithInt:arc4random_uniform(99)];

            [InputQuickSortArray addObject:giatri];
            chuoi = [NSString stringWithFormat:@"%@ ",giatri];
            [self write:chuoi];
        }
        [self writeln:@""];
    }
    
    
    [self writeln:@"---------------------"];

    [self writeln:@"Mang dau vao de QuickSort"];
    
        for (int pt = 0; pt < InputQuickSortArray.count ; pt ++)
        {

            chuoi = [NSString stringWithFormat:@"%@ ",InputQuickSortArray[pt]];
            [self write:chuoi];

            if (pt>0 && ((pt+1) % _numberOfCol)==0)
            {
                [self writeln:@""];
            }
        }
    
    NSArray * OutputQuickSort = [[NSArray alloc] init];
    OutputQuickSort = [self quickSort:InputQuickSortArray];
    
    
    [self writeln:@"---------------------"];
    
    [self writeln:@"Mang sau khi QuickSort"];
    
    for (int pt=0;pt<OutputQuickSort.count;pt++) {
        
        chuoi = [NSString stringWithFormat:@"%@ ",[OutputQuickSort objectAtIndex:pt]];
        [self write:chuoi];
        
        if (pt>0 && ((pt+1) % _numberOfCol)==0)
        {
            [self writeln:@""];
        }
    }

    
//    array = [[NSMutableArray alloc] init];
//    
//    for (int i = 0; i < 8; i++) {
//        NSMutableArray *subArray = [[NSMutableArray alloc] init];
//        for (int j = 0; j < 8; j++) {
//            [subArray addObject:[NSNumber numberWithInt:arc4random_uniform(100)]];
//        }
//        [array addObject:subArray];
//    }

}

-(NSArray *)quickSort:(NSMutableArray *)unsortedDataArray
{
    
    NSMutableArray *lessArray = [[NSMutableArray alloc] init];
    NSMutableArray *greaterArray =[[NSMutableArray alloc] init];
    if ([unsortedDataArray count] <1)
    {
        return nil;
    }
    int randomPivotPoint = arc4random() % [unsortedDataArray count];
    NSNumber *pivotValue = [unsortedDataArray objectAtIndex:randomPivotPoint];
    [unsortedDataArray removeObjectAtIndex:randomPivotPoint];
    for (NSNumber *num in unsortedDataArray)
    {
        //quickSortCount++; //This is required to see how many iterations does it take to sort the array using quick sort
        if (num < pivotValue)
        {
            [lessArray addObject:num];
        }
        else
        {
            [greaterArray addObject:num];
        }
    }
    NSMutableArray *sortedArray = [[NSMutableArray alloc] init];
    [sortedArray addObjectsFromArray:[self quickSort:lessArray]];
    [sortedArray addObject:pivotValue];
    [sortedArray addObjectsFromArray:[self quickSort:greaterArray]];
    return sortedArray;
}

//- (int)valueAtRow:(int)row andColumn:(int)col {
//    NSMutableArray *subArray = [array objectAtIndex:row];
//    return [[subArray objectAtIndex:col] intValue];
//}
//
//- (void)removeObjectAtRow:(int)row andColumn:(int)col {
//    NSMutableArray *subArray = [array objectAtIndex:row];
//   // [subArray removeObjectAtIndex:col];
//    [subArray replaceObjectAtIndex:col withObject:[NSNumber numberWithInt:-999]];
//}

@end
