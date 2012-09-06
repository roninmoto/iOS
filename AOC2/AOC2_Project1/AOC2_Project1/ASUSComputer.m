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
        
        count = 6;
        classType = @"ASUS";
        CPUType = @"Intel i7 SixCore";
        CPU_Speed = 4;
        HD_Size = 2;
        cost = 3;
        cpuCooler = 0;
    }
    return self;
};

-(void)setcpuCooler:(int)newCPU_Cooler
{
    cpuCooler = newCPU_Cooler;
}

-(int)getcpuCooler
{
    cpuCooler = (int) (count * cpuCooler);
    NSLog(@"cost of CPU Cooler is %i.", cpuCooler);
    return cpuCooler;
}


@end
