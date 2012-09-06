//
//  ASUSComputer.h
//  AOC2_Project1
//
//  Created by Joel Betterly on 8/28/12.
//  Copyright (c) 2012 Joel Betterly. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseComputer.h"

@interface ASUSComputer : BaseComputer

{
@protected
    
    int cpuCooler;
    
}

-(void)setcpuCooler:(int)newCPU_Cooler;
-(int)getcpuCooler;

@end
