//
//  ViewController.m
//  AOC2_Project4
//
//  Created by Joel Betterly on 9/11/12.
//  Copyright (c) 2012 Joel Betterly. All rights reserved.
//

#import "ViewController.h"
#import "PickerViewController.h"
@interface ViewController ()

@end

@implementation ViewController


//Action to save events to memory location on drive
-(IBAction)saveEventToMemory:(id)sender
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if (defaults !=nil)
    {
        NSString *currentEventString = currentEvents.text;
        [defaults setObject:currentEventString forKey:@"events"];
        [defaults synchronize];
        
        //telling user that data has been saved and how it will show the next time.
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Alert"
                                                      message:@"Data saved to memory.  Data will autoload when you open the app again."
                                                      delegate:self
                                                      cancelButtonTitle:@"Okay"
                                                      otherButtonTitles:nil];
        [alertView show];
    }
}
//added button to erase data since testing showed a large build up of data
-(IBAction)erase:(id)sender
{
    [[NSUserDefaults standardUserDefaults] setPersistentDomain:[NSDictionary dictionary] forName:[[NSBundle mainBundle]bundleIdentifier]];
    currentEvents.text = @"";
    
    //adding an alert so user knows data has been removed. Could have made an if/else statement but ran out of time to ask user are they sure.
    
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Alert"
                                                        message:@"Your data has been erased."
                                                       delegate:self
                                              cancelButtonTitle:@"Okay"
                                              otherButtonTitles:nil];
    [alertView show];
}

// added swipe gesture for swiping to right on main page
-(void) goSwipe:(UISwipeGestureRecognizer*)recognizer
{
    if (recognizer.direction == UISwipeGestureRecognizerDirectionRight)
    {

    PickerViewController *CurrentEvents = [[PickerViewController alloc] initWithNibName:@"PickerViewController" bundle:nil];
    if (CurrentEvents !=nil)
    {
        CurrentEvents.delegate = self;
        [self presentModalViewController:CurrentEvents animated:TRUE];
    }
  }
}
//part of swiping action
-(void)viewWillAppear:(BOOL)animated
{
    swipeToTheRight = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(goSwipe:)];
    swipeToTheRight.direction = UISwipeGestureRecognizerDirectionRight;
    [swipeLabelRight addGestureRecognizer:swipeToTheRight];
    [super viewWillAppear:animated];
}

-(void)setEvent:(NSString *)currentEventStrg
{
    currentEvents.text = [currentEvents.text stringByAppendingString:currentEventStrg];
}

- (void)viewDidLoad
{
    //brings up saved event and loads it into textview
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if (defaults !=nil)
    {
        NSString *currentEventString = [defaults objectForKey:@"events"];
        currentEvents.text = currentEventString;
    }
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
