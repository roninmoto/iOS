//
//  PickerViewController.h
//  AOC2_Project4
//
//  Created by Joel Betterly on 9/11/12.
//  Copyright (c) 2012 Joel Betterly. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol PassEventInfo <NSObject>

@required

-(void)setEvent:(NSString*)currentEventStrg;


@end

@interface PickerViewController : UIViewController
{
    IBOutlet UITextField *textFieldTwo;
    id <PassEventInfo> delegate;
    IBOutlet UIDatePicker *pickDate;
    NSString *info;
    NSString *addEvent;
    IBOutlet UILabel *swipeLabelLeft;
    UISwipeGestureRecognizer *swipeToTheLeft;
}

@property (strong) id<PassEventInfo> delegate;
@property (nonatomic, retain)IBOutlet UIDatePicker *pickDate;

-(void) goSwipeLeft:(UISwipeGestureRecognizer*)recognizer;
-(IBAction)closeKeyboard:(id)sender;

@end
