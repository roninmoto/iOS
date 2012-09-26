//
//  ViewController.m
//  MDF1_Project1
//
//  Created by Joel Betterly on 9/25/12.
//  Copyright (c) 2012 Joel Betterly. All rights reserved.
//

//image used for icon found at www.iconfinder.com/34303/256/ GPL License Designer Everaldo Coelho

#import "ViewController.h"
#import "TableViewController.h"

@interface ViewController ()

@end

@implementation ViewController


//the action that loads the second view
-(IBAction)onButtonClick:(id)sender
{
    TableViewController *TheTableView = [[TableViewController alloc] initWithNibName:@"TableViewController" bundle:nil];
    if (TheTableView !=nil)
    {
        //had to use new code as the old code is no longer used. presentModalViewController has been retired.
        [self presentViewController:TheTableView animated:TRUE completion:nil];
    }
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

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
