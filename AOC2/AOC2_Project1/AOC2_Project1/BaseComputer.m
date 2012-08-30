//
//  BaseComputer.m
//  AOC2_Project1
//
//  Created by Joel Betterly on 8/28/12.
//  Copyright (c) 2012 Joel Betterly. All rights reserved.
//

//this class is not declared anywhere in my viewcontoller.m file
// Factory will complete all output


#import "BaseComputer.h"

@implementation BaseComputer
-(id)init
{
    self = [super init];
    if (self !=nil)
    {
        count = 0;
        classType = @"Computer Type";
        CPUType = @"CPU Type";
        CPU_Speed = 0;
        HD_Size = 0;
        cost = 0;
    }
    return self;
};

-(void)setHDSize:(int)newHDSize
{
    HD_Size = newHDSize;
}

//string types

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

//int types

-(int)getCPU_Speed
{
    NSLog(@"I run at this speed:%i Ghz",CPU_Speed);
    return CPU_Speed;
}


//multipler takes cpu_speed and cost muliples them and then muliples sum by 100 to get cost
-(int)getCost
{
    cost = (int) (cost * CPU_Speed) * 100;
    NSLog(@"The cost of this machine is %i", cost);
    return cost;
}
@end
