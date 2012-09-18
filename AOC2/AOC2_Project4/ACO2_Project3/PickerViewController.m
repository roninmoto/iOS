//
//  PickerViewController.m
//  AOC2_Project4
//
//  Created by Joel Betterly on 9/11/12.
//  Copyright (c) 2012 Joel Betterly. All rights reserved.
//

#import "PickerViewController.h"

@interface PickerViewController ()

@end

@implementation PickerViewController
@synthesize delegate, pickDate;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        delegate = nil;
    }
    return self;
}

-(IBAction)closeKeyboard:(id)sender
{
    [textFieldTwo resignFirstResponder];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    pickDate.minimumDate = [NSDate date];
    
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

-(BOOL)textEditing:(UITextField *)currentEventTextField
{
    currentEventTextField.text = @"";
    return YES;
}

-(IBAction)saveEvent:(id)sender
{
    pickDate.minimumDate = [NSDate date];
    NSDate *picked = [pickDate date];
    if (picked !=nil)
    {
        NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
        if (dateFormat !=nil)
        {
            //format for your date
            [dateFormat setDateFormat:@"MMMM dd, h:mm a"];
        }
        info = [dateFormat stringFromDate:picked];
        NSLog(@"%@", info);
    }
    
    [self dismissModalViewControllerAnimated:TRUE];
    if (delegate !=nil)
        
    {   //This is the format to display the text in the uitextview
        addEvent = [NSString stringWithFormat:@"%@ \n%@ \n \n", textFieldTwo.text, info];
        [delegate setEvent:addEvent];
    }
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
