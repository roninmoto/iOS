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

//Textview, slider and save button
{
    IBOutlet UITextView *currentEvents;
    IBOutlet UILabel *swipeLabelRight;
    UISwipeGestureRecognizer *swipeToTheRight;
    IBOutlet UIButton *saveEvent;
}

-(void) goSwipe:(UISwipeGestureRecognizer*)recognizer;


@end
