//
//  ViewController.h
//  AOC2_Project1
//
//  Created by Joel Betterly on 8/28/12.
//  Copyright (c) 2012 Joel Betterly. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ComputerFactory.h"
#import "DellComputer.h"
#import "HPComputer.h"
#import "ASUSComputer.h"
#import "BaseComputer.h"

@interface ViewController : UIViewController

{
    UILabel *DellLabel;
    UILabel *HPLabel;
    UILabel *ASUSLabel;
}

@end
