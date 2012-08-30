//
//  DellComputer.m
//  AOC2_Project1
//
//  Created by Joel Betterly on 8/28/12.
//  Copyright (c) 2012 Joel Betterly. All rights reserved.
//

#import "DellComputer.h"

@implementation DellComputer

-(id)init

{
    if (self = [super init]) {
        
        count = 0;
        classType = @"Dell";
        CPUType = @"Intel i3 QuadCore";
        CPU_Speed = 3;
        HD_Size = 1;
        cost = 700;
        
    }
    return self;
};


@end
