//
//  PickerViewController.h
//  ACO2_Project3
//
//  Created by Joel Betterly on 9/11/12.
//  Copyright (c) 2012 Joel Betterly. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol EventInfo <NSObject>

@required

@end

@interface PickerViewController : UIViewController
{
    IBOutlet UITextField *textFieldTwo;
    id <EventInfo> delegate;
    IBOutlet UIDatePicker *pickDate;
    NSString *info;
    NSString *newEvent;
}

@property (strong) id<EventInfo> delegate;
@property (nonatomic, retain)IBOutlet UIDatePicker *pickDate;

-(IBAction)saveEvent:(id)sender;
-(IBAction)closeKeyboard:(id)sender;

@end
