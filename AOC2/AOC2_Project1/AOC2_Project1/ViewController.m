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
    DellLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 5, 320, 70)];
    DellLabel.backgroundColor = [UIColor lightGrayColor];
    DellLabel.textColor = [UIColor blackColor];
    DellLabel.textAlignment = UITextAlignmentCenter;
    DellLabel.numberOfLines = 3;
    [self.view addSubview:DellLabel];
    
    //HP Label
    HPLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 85, 320, 70)];
    HPLabel.backgroundColor = [UIColor lightGrayColor];
    HPLabel.textColor = [UIColor blackColor];
    HPLabel.textAlignment = UITextAlignmentCenter;
    HPLabel.numberOfLines = 3;
    [self.view addSubview:HPLabel];
    
    //ASUS Label
    ASUSLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 165, 320, 70)];
    ASUSLabel.backgroundColor = [UIColor lightGrayColor];
    ASUSLabel.textColor = [UIColor blackColor];
    ASUSLabel.textAlignment = UITextAlignmentCenter;
    ASUSLabel.numberOfLines = 3;
    [self.view addSubview:ASUSLabel];
    
    DellComputer *dell = (DellComputer*) [ComputerFactory OEMFactory:0];
    [dell setHDSize:1];
    DellLabel.text = [NSString stringWithFormat:@"I am a %@ computer,with an %@ processor running at %iGhz costing around $%i",[dell getClassType],[dell getCPUType],[dell getCPU_Speed],[dell getCost]];
    
    
    
    
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
