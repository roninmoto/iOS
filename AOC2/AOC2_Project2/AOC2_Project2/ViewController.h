//
//  ViewController.h
//  AOC2_Project2
//
//  Created by Joel Betterly on 9/3/12.
//  Copyright (c) 2012 Joel Betterly. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

//IBOutlets for each field
{
    
    double operatorResults;
    IBOutlet UITextField *display;
    int operator;
    double displayNumber;
    IBOutlet UISwitch *onOff;
    IBOutlet UILabel *label;
    
}

//setting upp enumeration for change of background colors
typedef enum
{
    white_color=0,
    blue_color,
    green_color,
    
}backgroundColor;

//IBActions for switches, buttons, info, and clearing
-(IBAction)stateOfSwitch:(id)sender;
-(IBAction)buttonNumberPressed:(id)sender;
-(IBAction)changeBackground:(id)sender;
-(IBAction)clickOperator:(id)sender;
-(IBAction)clearButton:(id)sender;

@end
