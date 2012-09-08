//
//  ViewController.m
//  AOC2_Project2
//
//  Created by Joel Betterly on 9/3/12.
//  Copyright (c) 2012 Joel Betterly. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"


@interface ViewController ()

@end

@implementation ViewController


//If switch is On or Off
-(IBAction)stateOfSwitch:(id)sender
{
    if (onOff.on) {
        label.text = @"Calculator On";
        displayNumber = 0;
    }
    else
    {
        label.text = @"Calculator Off";
        display.text = @"";

    }
}

// This will display the number in my text field
//set tags 0-9 for numbers

-(IBAction)buttonNumberPressed:(id)sender
{
    if (onOff.on != false)
    {
        displayNumber = displayNumber*10 + (float)[sender tag];
        display.text = [NSString stringWithFormat:@"%2.0f",displayNumber];
    }
}

//This will add the previous number to the new number
//set tag for plus and equal

-(IBAction)clickOperator:(id)sender
{
    if (operator == 0) operatorResults = displayNumber;
        else
        {
            operatorResults = operatorResults + displayNumber;
        }
    
    displayNumber = 0;
    display.text = [NSString stringWithFormat:@"%2.0f", operatorResults];
    if ([sender tag] == 0) operatorResults = 0;
    operator = [sender tag];
}


//clear function to resart at zero

-(IBAction)clearButton:(id)sender
{
    displayNumber = 0;
    display.text = @"0";
    operator = 0;
}

//Wendy's video UISegmentControl movie, look around 2:30 in video.  Copied from there.

-(IBAction)changeBackground:(id)sender
{
    UISegmentedControl *segmentControl = (UISegmentedControl*)sender;
    if (segmentControl !=nil)
    {
        int selectedSegmentIndex = segmentControl.selectedSegmentIndex;
        if (selectedSegmentIndex == white_color)
        {
            self.view.backgroundColor = [UIColor whiteColor];
        }
        else if (selectedSegmentIndex == blue_color)
        {
            self.view.backgroundColor = [UIColor blueColor];
        }
        else if (selectedSegmentIndex == green_color)
        {
            self.view.backgroundColor = [UIColor greenColor];
        }
            
    }
}



- (void)viewDidLoad
{
    //Set Background Color to initial color of white
   self.view.backgroundColor = [UIColor whiteColor];

    
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
