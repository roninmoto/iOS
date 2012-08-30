//
//  ComputerFactory.h
//  AOC2_Project1
//
//  Created by Joel Betterly on 8/28/12.
//  Copyright (c) 2012 Joel Betterly. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseComputer.h"
#import "DellComputer.h"
#import "HPComputer.h"
#import "ASUSComputer.h"


@interface ComputerFactory : NSObject
+(BaseComputer*)OEMFactory : (NSInteger)BaseComputerName;
@end
