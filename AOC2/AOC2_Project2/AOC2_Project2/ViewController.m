//
//  ViewController.m
//  AOC2_Project2
//
//  Created by Joel Betterly on 9/3/12.
//  Copyright (c) 2012 Joel Betterly. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


//If switch is On or Off
-(IBAction)stateOfSwitch:(id)sender
{
    if (onOff.on) {
        label.text = @"Calculator On";
    }
    else
    {
        label.text = @"Calculator Off";
    }
}

-(IBAction)buttonNumberPressed:(id)sender
{
    if (onOff != false)
    {
        displayNumber = displayNumber*10 + (float)[sender tag];
        display.text = [NSString stringWithFormat:@"%2.0f",displayNumber];
    }
}

- (void)viewDidLoad
{
    //Set Background Color
    self.view.backgroundColor = [UIColor blueColor];

    
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
