//
//  secondView.m
//  MDF1_Project1
//
//  Created by Joel Betterly on 9/25/12.
//  Copyright (c) 2012 Joel Betterly. All rights reserved.
//

#import "secondView.h"
#import "TableViewController.h"
#import "ViewController.h"

@interface secondView ()

@end

@implementation secondView
@synthesize stores;
@synthesize textSelected;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (id) initWithTextSelected:(NSString *)text
{
    self.textSelected = text;
    [stores setText:[self textSelected]];
    return self;
}

- (void)viewDidLoad
{
    [stores setText:[self textSelected]];
    self.title = @"ASolution";
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (IBAction)closeButton:(id)sender
{
    //had to use new dismiss because dismissModalViewController has been outdated.
    [self dismissViewControllerAnimated:TRUE completion:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
