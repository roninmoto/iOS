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

-(void)viewWillAppear:(BOOL)animated
{
    swipeToTheRight = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(goSwipe:)];
    swipeToTheRight.direction = UISwipeGestureRecognizerDirectionRight;
    [swipeLabel addGestureRecognizer:swipeToTheRight];
    [super viewWillAppear:animated];
}

-(void)setEvent:(NSString *)currentEventStrg
{
    currentEvents.text = [currentEvents.text stringByAppendingString:currentEventStrg];
}

- (void)viewDidLoad
{
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
