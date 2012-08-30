//
//  BaseComputer.m
//  AOC2_Project1
//
//  Created by Joel Betterly on 8/28/12.
//  Copyright (c) 2012 Joel Betterly. All rights reserved.
//

#import "BaseComputer.h"

@implementation BaseComputer
-(id)init
{
    self = [super init];
    if (self !=nil)
    {
        count = 0;
        classType = @"My computer is";
        CPUType = @"unknown";
        CPU_Speed = 0;
        HD_Size = 0;
    }
    return self;
};

-(void)setHDSize:(int)newHDSize
{
    HD_Size = newHDSize;
}

-(NSString*)getClassType
{
    NSLog(@"I am a %@ name brand computer.", classType);
    return classType;
}

-(NSString*)getCPUType
{
    NSLog(@"I am this type of CPU:%@",CPUType);
    return CPUType;
}
-(int)getCPU_Speed
{
    NSLog(@"I run at this speed:%i Ghz",CPU_Speed);
    return CPU_Speed;
}

@end
