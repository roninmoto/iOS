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
        
        count = 3;
        classType = @"Dell";
        CPUType = @"Intel i3 QuadCore";
        CPU_Speed = 3;
        HD_Size = 1;
        keyboard = 0;
        cost = 2;
        
    }
    return self;
};

-(void)setKeyboard:(int)newKeyboard
{
    keyboard = newKeyboard;
}

-(int)getKeyboard
{
    keyboard = (int) (count * keyboard);
    NSLog(@"cost of keyboard is %i.", keyboard);
    return keyboard;
}
@end
