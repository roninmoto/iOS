//
//  TableViewController.m
//  MDF1_Project1
//
//  Created by Joel Betterly on 9/25/12.
//  Copyright (c) 2012 Joel Betterly. All rights reserved.
//

#import "TableViewController.h"
#import "AppDelegate.h"
#import "CustomView.h"
#import "secondView.h"


@interface TableViewController ()

@end

@implementation TableViewController
@synthesize array;
@synthesize arrayTwo;
@synthesize arrayThree;
@synthesize arrayFour;
@synthesize secondViewController;


-(IBAction)editButton:(id)sender
{
    if (theTableView.editing == NO)
        
    {
        [theTableView setEditing:YES];
        
    }else
        [theTableView setEditing:NO];
    
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
    }
    return self;
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewDidLoad
{
    
    //setup my array of local computer companies.
    //I hard coded my arrays, but I found some data about plists, will look into that for next time.
    array = [[NSMutableArray alloc] initWithObjects:
             @"ASolution",
             @"Geek Squad",
             @"COMPUSA",
             @"Staples",
             @"Office Depot",
             @"BestBuy",
             @"Computer Depot",
             @"IntolLan",
             @"Best Computers",
             @"COMP-U-Source",
             @"John's Repair",
             @"SED Int",
             @"MIT Computers",
             @"Citrus Computers",
             @"PC Repair",
             @"Computer DRs",
             @"Tech Hero",
             @"Call a Geek",
             @"Lacey Computer",
             @"ISORM",
             nil];
    
    arrayTwo = [[NSMutableArray alloc] initWithObjects:
                
                @"Clearwater",
                @"Tampa",
                @"Orlando",
                @"Lakeland",
                @"Brandon",
                @"Clearwater",
                @"Tampa",
                @"Orlando",
                @"Lakeland",
                @"Brandon",
                @"Clearwater",
                @"Tampa",
                @"Orlando",
                @"Lakeland",
                @"Brandon",
                @"Clearwater",
                @"Tampa",
                @"Orlando",
                @"Lakeland",
                @"Brandon",
                nil];
    
    arrayThree = [[NSMutableArray alloc] initWithObjects:
                  @"727-222-1234",
                  @"727-222-1234",
                  @"727-222-1234",
                  @"727-222-1234",
                  @"727-222-1234",
                  @"727-222-1234",
                  @"727-222-1234",
                  @"727-222-1234",
                  @"727-222-1234",
                  @"727-222-1234",
                  @"727-222-1234",
                  @"727-222-1234",
                  @"727-222-1234",
                  @"727-222-1234",
                  @"727-222-1234",
                  @"727-222-1234",
                  @"727-222-1234",
                  @"727-222-1234",
                  @"727-222-1234",
                  @"727-222-1234",
                  nil];
    
    arrayFour = [[NSMutableArray alloc]initWithObjects:
                 @"123 Some Street Clearwater, FL 33333",
                 @"123 Some Street Tampa, FL 33444",
                 @"123 Some Street Orlando, FL 33555",
                 @"123 Some Street Lakeland, FL 33366",
                 @"123 Some Street Brandon, FL 33222",
                 @"123 Some Street Clearwater, FL 33333",
                 @"123 Some Street Tampa, FL 33444",
                 @"123 Some Street Orlando, FL 33555",
                 @"123 Some Street Lakeland, FL 33366",
                 @"123 Some Street Brandon, FL 33222",
                 @"123 Some Street Clearwater, FL 33333",
                 @"123 Some Street Tampa, FL 33444",
                 @"123 Some Street Orlando, FL 33555",
                 @"123 Some Street Lakeland, FL 33366",
                 @"123 Some Street Brandon, FL 33222",
                 @"123 Some Street Clearwater, FL 33333",
                 @"123 Some Street Tampa, FL 33444",
                 @"123 Some Street Orlando, FL 33555",
                 @"123 Some Street Lakeland, FL 33366",
                 @"123 Some Street Brandon, FL 33222",
                 nil];
    
    
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

//display rows from the array
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return array.count;
}


//edit the cells
- (UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return UITableViewCellEditingStyleDelete;
}
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete)
    {
        //log the row that will be deleted
        NSLog(@"delete row=%d", indexPath.row);
        //removes the row from the array
        [array removeObjectAtIndex:indexPath.row];
        [theTableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    CustomView *cell = [theTableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil)
    {
        NSArray *views = [[NSBundle mainBundle] loadNibNamed:@"CustomView" owner:nil options:nil];
        
        for (UIView *view in views)
        {
            if([view isKindOfClass:[CustomView class]])
            {
                cell = (CustomView*)view;
                cell.textLabel.text = (NSString*)[array objectAtIndex:indexPath.row];
                cell.storeLabel.text = (NSString*)[arrayTwo objectAtIndex:indexPath.row];
            }
        }
    }
    cell.textLabel.text = (NSString*)[array objectAtIndex:indexPath.row];
    cell.storeLabel.text = (NSString*)[arrayTwo objectAtIndex:indexPath.row];
    
    return cell;
}

//This is where the data from the secondview is shown.  Extra arrays were added to give more information to the user.  This is extra work and should be done in a plist which I have to research.

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSString *storeSelected = [array objectAtIndex:[indexPath row]];
    NSString *storeLocation = [arrayTwo objectAtIndex:[indexPath row]];
    NSString *phoneNum = [arrayThree objectAtIndex:[indexPath row]];
    NSString *address = [arrayFour objectAtIndex:[indexPath row]];
    
    //this is the output for the second view
    NSString *strg = [[NSString alloc] initWithFormat: @"%@ - %@ \n %@ \n \n %@", storeSelected, storeLocation, phoneNum, address];

    
    //This brings up the detailed view when clicked on
    if (self.secondViewController == nil)
    {
        secondView *sv = [[secondView alloc]initWithNibName:@"secondView" bundle:[NSBundle mainBundle]];
        self.secondViewController = sv;
    }
    
    [self.secondViewController initWithTextSelected:strg];
    //have to use new code as old code was retired.
    [self presentViewController:secondViewController animated:true completion:nil];
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
