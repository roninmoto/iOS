//
//  ViewController.m
//  AOC2_Project1
//
//  Created by Joel Betterly on 8/28/12.
//  Copyright (c) 2012 Joel Betterly. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    self.view.backgroundColor = [UIColor whiteColor];
    
    //Labels for classes
    
    //Dell Label
    DellLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 5, 320, 55)];
    DellLabel.backgroundColor = [UIColor lightGrayColor];
    DellLabel.textAlignment = UITextAlignmentCenter;
    DellLabel.numberOfLines = 2;
    [self.view addSubview:DellLabel];
    
    //HP Label
    HPLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 65, 320, 55)];
    HPLabel.backgroundColor = [UIColor lightGrayColor];
    HPLabel.textAlignment = UITextAlignmentCenter;
    HPLabel.numberOfLines = 2;
    [self.view addSubview:HPLabel];
    
    //ASUS Label
    ASUSLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 125, 320, 55)];
    ASUSLabel.backgroundColor = [UIColor lightGrayColor];
    ASUSLabel.textAlignment = UITextAlignmentCenter;
    ASUSLabel.numberOfLines = 2;
    [self.view addSubview:ASUSLabel];
    
    
    
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
