//
//  TableViewController.h
//  MDF1_Project1
//
//  Created by Joel Betterly on 9/25/12.
//  Copyright (c) 2012 Joel Betterly. All rights reserved.
//

//For some reason when I made my .xib file and added the table view, it ended up covering my label and edit button.  Although I could see it on the .xib file, when I ran the program it was not showing up.  I shrunk the table view and then it started working correctly. The lenght maybe the new i5 phone default.


#import <UIKit/UIKit.h>
#import "secondView.h"

@interface TableViewController : UIViewController <UITableViewDelegate>
{
    IBOutlet UITableView *theTableView;
    NSMutableArray *array;
    NSMutableArray *arrayTwo;
    NSMutableArray *arrayThree;
    NSMutableArray *arrayFour;
    secondView *secondViewController;
}

@property (strong, nonatomic) NSMutableArray *array;
@property (strong, nonatomic) NSMutableArray *arrayTwo;
@property (strong, nonatomic) NSMutableArray *arrayThree;
@property (strong, nonatomic) NSMutableArray *arrayFour;
@property (nonatomic, retain) secondView *secondViewController;

-(IBAction)editButton:(id)sender;

@end
