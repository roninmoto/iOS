//
//  BaseComputer.h
//  AOC2_Project1
//
//  Created by Joel Betterly on 8/28/12.
//  Copyright (c) 2012 Joel Betterly. All rights reserved.
//

#import <Foundation/Foundation.h>

//make my type definitions so the factory can pull correct data from correct subclass
typedef enum {
    OEM_Dell = 0,
    OEM_HP,
    OEM_ASUS,
}myOEM;

@interface BaseComputer : NSObject


{
@protected
    myOEM count;
    NSString *classType;
    NSString *CPUType;
    int CPU_Speed;
    int HD_Size;
    int cost;
}

//setters and getters

-(NSString*)getClassType;
-(NSString*)getCPUType;
-(int)getCPU_Speed;
-(int)getCost;
-(void)setHDSize:(int)newHDSize;

@end
