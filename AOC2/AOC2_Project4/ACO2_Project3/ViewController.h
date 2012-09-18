//
//  ViewController.h
//  AOC2_Project4
//
//  Created by Joel Betterly on 9/11/12.
//  Copyright (c) 2012 Joel Betterly. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PickerViewController.h"

@interface ViewController : UIViewController
<PassEventInfo>

{
    //Make sure this is a UITextView and not UITextField...Mistake will cost you a couple of hours and some head banging.
    IBOutlet UITextView *currentEvents;
}

-(IBAction)addEvent:(id)sender;


@end
