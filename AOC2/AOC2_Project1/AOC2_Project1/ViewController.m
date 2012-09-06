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
    DellLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 1, 320, 70)];
    DellLabel.backgroundColor = [UIColor lightGrayColor];
    DellLabel.textColor = [UIColor blackColor];
    DellLabel.textAlignment = UITextAlignmentCenter;
    DellLabel.numberOfLines = 3;
    [self.view addSubview:DellLabel];
    
    //HP Label
    HPLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 74, 320, 70)];
    HPLabel.backgroundColor = [UIColor lightGrayColor];
    HPLabel.textColor = [UIColor blackColor];
    HPLabel.textAlignment = UITextAlignmentCenter;
    HPLabel.numberOfLines = 3;
    [self.view addSubview:HPLabel];
    
    //ASUS Label
    ASUSLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 147, 320, 70)];
    ASUSLabel.backgroundColor = [UIColor lightGrayColor];
    ASUSLabel.textColor = [UIColor blackColor];
    ASUSLabel.textAlignment = UITextAlignmentCenter;
    ASUSLabel.numberOfLines = 3;
    [self.view addSubview:ASUSLabel];
    
    //Adding second set of UILabels for each subclass
    //dell label two
    DellLabelTwo = [[UILabel alloc] initWithFrame:CGRectMake(0, 220, 320, 70)];
    DellLabelTwo.backgroundColor = [UIColor blueColor];
    DellLabelTwo.textColor = [UIColor whiteColor];
    DellLabelTwo.textAlignment = UITextAlignmentCenter;
    DellLabelTwo.numberOfLines = 3;
    [self.view addSubview:DellLabelTwo];
    
    //hp label two
    HPLabelTwo = [[UILabel alloc] initWithFrame:CGRectMake(0, 293, 320, 70)];
    HPLabelTwo.backgroundColor = [UIColor blueColor];
    HPLabelTwo.textColor = [UIColor whiteColor];
    HPLabelTwo.textAlignment = UITextAlignmentCenter;
    HPLabelTwo.numberOfLines = 3;
    [self.view addSubview:HPLabelTwo];
    
    //ASUS label two
    ASUSLabelTwo =[[UILabel alloc] initWithFrame:CGRectMake(0, 367, 320, 70)];
    ASUSLabelTwo.backgroundColor = [UIColor blueColor];
    ASUSLabelTwo.textColor = [UIColor whiteColor];
    ASUSLabelTwo.textAlignment = UITextAlignmentCenter;
    ASUSLabelTwo.numberOfLines = 3;
    [self.view addSubview:ASUSLabelTwo];
    
    
    
    //First accessor label which connects to subclass dell
    DellComputer *dell = (DellComputer*) [ComputerFactory OEMFactory:0];
    [dell setHDSize:2];
    [dell setCost:5];
    
    DellLabel.text = [NSString stringWithFormat:@"A %@ computer, with an %@ processor of %iGhz costing around $%i.00. Software is $%i.00.",[dell getClassType],[dell getCPUType],[dell getCPU_Speed],[dell getCost],[dell getSoftware]];
    
    
    //Second accessor label, change OEMFactory to 2 to pull from correct subclass
    HPComputer *HP = (HPComputer*) [ComputerFactory OEMFactory:1];
    [HP setHDSize:4];
    [HP setCost:3];
    
    HPLabel.text = [NSString stringWithFormat:@"A %@ computer, with an %@ processor of %iGhz costing around $%i.00. Software is $%i.00.",[HP getClassType],[HP getCPUType],[HP getCPU_Speed],[HP getCost],[HP getSoftware]];
    
    
    //Third accessor and changed OEMFactory for third subclass
    ASUSComputer *ASUS = (ASUSComputer*) [ComputerFactory OEMFactory:2];
    [ASUS setHDSize:3];
    [ASUS setCost:5];
    
    ASUSLabel.text = [NSString stringWithFormat:@"A %@ computer, with an %@ processor of %iGhz costing around $%i.00. Software is $%i.00",[ASUS getClassType],[ASUS getCPUType],[ASUS getCPU_Speed],[ASUS getCost],[ASUS getSoftware]];
    
    //three static labels
    //DellLabelTwo
    
    int bluRay = 199;
    if (bluRay > 100)
    {
        DellLabelTwo.text = [NSString stringWithFormat:@"The cost to install Bluray is $%i.00 on a %@. It is too much so we will install a DVD player instead.", bluRay, [dell getClassType]];
    }
    else
    {
        DellLabelTwo.text = [NSString stringWithFormat:@"The cost of Bluray is $%i.00 on a %@ and is cheap enough to add to the system.", bluRay, [dell getClassType]];
    }
    
    //HPLabelTwo
    BOOL solidState = false;
    if (solidState == false)
    {
        HPLabelTwo.text = [NSString stringWithFormat:@"This %@ computer is equiped with a SSD Drive.", [HP getClassType]];
    }
    else
    {
        HPLabelTwo.text = [NSString stringWithFormat:@"This %@ computer has a SATA drive.", [HP getClassType]];
    }
    
    BOOL fourStar = true;
    if (fourStar == true)
    {
        ASUSLabelTwo.text = [NSString stringWithFormat:@"%@ with an %@ processor is a Four Star Computer, Rated #1!", [ASUS getClassType], [ASUS getCPUType]];
    }
    else
    {
        ASUSLabelTwo.text = [NSString stringWithFormat:@"%@ with a dual core processor is not a four star computer.",[ASUS getClassType]];
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
