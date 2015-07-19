//
//  NSArray+WordsCount.m
//  TechmasterApp
//
//  Created by Nguyen Minh Khue on 7/19/15.
//  Copyright (c) 2015 Techmaster. All rights reserved.
//

#import "NSArray+WordsCount.h"

@implementation NSArray (WordsCount)
- (void) WordsOccurenceCount{
    
    NSMutableDictionary *dictionary = [NSMutableDictionary dictionary];
    //Bo di cac tu thong dung
    NSArray* filterArray = @[@"i", @"the", @"am", @"is", @"to", @"an", @"were", @"was", @"as", @"a", @"are"
                             , @"has", @"be", @"in", @"by"];
    NSMutableArray *tempArray = [[NSMutableArray alloc]init];
    
    for (int i=0; i <self.count; i++) {
        
        NSString *str = self[i];
        
        if (![filterArray containsObject:str])
        {
            [tempArray addObject:str];
        }
        
    }
    
    NSArray *arrayOfWords = [[NSArray alloc]initWithArray:tempArray];
    
    //Dem tu trong mang
    
    for (NSString *word in arrayOfWords)
    {
        if ([dictionary objectForKey:word])
        {
            NSNumber *numberOfOccurences = [dictionary objectForKey:word];
            NSNumber *increment = [NSNumber numberWithInt:(1 + [numberOfOccurences intValue])];
            [dictionary setValue:increment forKey:word];
        }
        else
        {
            [dictionary setValue:[NSNumber numberWithInt:1] forKey:word];
        }
    }
    NSArray *keys = [dictionary allKeys];
    
    NSString *chuoi;
    for (id items in keys) {
        
        chuoi = [NSString stringWithFormat:@"%@: %@ ",items, [dictionary objectForKey:items]];
        
        NSLog(@"%@",chuoi);
    }
}

@end
