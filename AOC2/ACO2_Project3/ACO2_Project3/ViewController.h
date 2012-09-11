//
//  ViewController.h
//  ACO2_Project3
//
//  Created by Joel Betterly on 9/11/12.
//  Copyright (c) 2012 Joel Betterly. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PickerViewController.h"

@interface ViewController : UIViewController
<PassEventInfo>

{
    IBOutlet UITextField *currentEvents;
}

-(IBAction)addEvent:(id)sender;


@end
