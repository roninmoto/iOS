//
//  ComputerFactory.m
//  AOC2_Project1
//
//  Created by Joel Betterly on 8/28/12.
//  Copyright (c) 2012 Joel Betterly. All rights reserved.
//

#import "ComputerFactory.h"

@implementation ComputerFactory

+(BaseComputer*)OEMFactory:(NSInteger)BaseComputerName
{
    if (BaseComputerName == 0) {
        
        return [[DellComputer alloc]init];
        
    }else if (BaseComputerName == 1){
        
        return [[HPComputer alloc]init];
        
    }else if (BaseComputerName == 2){
        
        return [[ASUSComputer alloc]init];
    }
    return nil;
    
};

@end
