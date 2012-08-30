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
    
    //First accessor label which connects to subclass dell
    DellComputer *dell = (DellComputer*) [ComputerFactory OEMFactory:0];
    [dell setHDSize:1];
    DellLabel.text = [NSString stringWithFormat:@"I am a %@ computer,with an %@ processor running at %iGhz costing around $%i",[dell getClassType],[dell getCPUType],[dell getCPU_Speed],[dell getCost]];
    
    
    //Second accessor label, change OEMFactory to 2 to pull from correct subclass
    HPComputer *HP = (HPComputer*) [ComputerFactory OEMFactory:1];
    [HP setHDSize:1];
    HPLabel.text = [NSString stringWithFormat:@"I am an %@ computer,with an %@ processor running at %iGhz costing around $%i",[HP getClassType],[HP getCPUType],[HP getCPU_Speed],[HP getCost]];
    
    
    //Third accessor and changed OEMFactory for third subclass
    ASUSComputer *ASUS = (ASUSComputer*) [ComputerFactory OEMFactory:2];
    [ASUS setHDSize:1];
    ASUSLabel.text = [NSString stringWithFormat:@"I am an %@ computer,with an %@ processor running at %iGhz costing around $%i",[ASUS getClassType],[ASUS getCPUType],[ASUS getCPU_Speed],[ASUS getCost]];
    
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
