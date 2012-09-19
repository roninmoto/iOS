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


//adding swipe gesture to return to main screen
-(void)viewWillAppear:(BOOL)animated
{
    swipeToTheLeft = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(goSwipeLeft:)];
    swipeToTheLeft.direction = UISwipeGestureRecognizerDirectionLeft;
    [swipeLabelLeft addGestureRecognizer:swipeToTheLeft];
    
    [super viewWillAppear:animated];
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



-(void) goSwipeLeft:(UISwipeGestureRecognizer*)recognizer
{
    if (recognizer.direction == UISwipeGestureRecognizerDirectionLeft)
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
        if (delegate != nil)
        
        {   //This is the format to display the text in the uitextview
            addEvent = [NSString stringWithFormat:@"%@ \n%@ \n \n", textFieldTwo.text, info];
            
            //checks to see if textfield is empty
            if (textFieldTwo.text.length > 0)
            {
                [delegate setEvent:addEvent];
                
                // brings up an alert that the field is empty and spits them back to home page.
                //give good error message to user.
            }else
            {
                UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Alert"
                                                            message:@"Event was left blank. Please enter data and try again."
                                                            delegate:self
                                                            cancelButtonTitle:@"Okay"
                                                            otherButtonTitles:nil];
                [alertView show];
            }
        }
     [self dismissModalViewControllerAnimated:TRUE];
    }
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
