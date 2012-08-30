//
//  ComputerFactory.m
//  AOC2_Project1
//
//  Created by Joel Betterly on 8/28/12.
//  Copyright (c) 2012 Joel Betterly. All rights reserved.
//

#import "ComputerFactory.h"

@implementation ComputerFactory

//Static factory to determine computer type

+(BaseComputer*)OEMFactory:(NSInteger)BaseComputerName
{
    // 1st if is hit, will send dell subclass
    if (BaseComputerName == 0) {
        
        return [[DellComputer alloc]init];
     
    //2nd if hit, will send HP subclass
    }else if (BaseComputerName == 1){
        
        return [[HPComputer alloc]init];
        
    //3rd if hit, will send ASUS subclass
    }else if (BaseComputerName == 2){
        
        return [[ASUSComputer alloc]init];
    }
    //returns nil, then I screwed up 
    return nil;
    
};

@end
