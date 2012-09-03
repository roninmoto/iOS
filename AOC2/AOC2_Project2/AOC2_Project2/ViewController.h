//
//  ViewController.h
//  AOC2_Project2
//
//  Created by Joel Betterly on 9/3/12.
//  Copyright (c) 2012 Joel Betterly. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    IBOutlet UITextField *display;
    double displayNumber;
    IBOutlet UISwitch *onOff;
    IBOutlet UILabel *label;
    
}

-(IBAction)stateOfSwitch:(id)sender;
-(IBAction)buttonNumberPressed:(id)sender;
@end
