//
//  ASUSComputer.m
//  AOC2_Project1
//
//  Created by Joel Betterly on 8/28/12.
//  Copyright (c) 2012 Joel Betterly. All rights reserved.
//

#import "ASUSComputer.h"

@implementation ASUSComputer

-(id)init

{
    if (self = [super init]) {
        
        count = 2;
        classType = @"ASUS";
        CPUType = @"Intel i7 SixCore";
        CPU_Speed = 4;
        HD_Size = 20;
        cost = 3;
    }
    return self;
};


@end
