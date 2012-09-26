//
//  secondView.h
//  MDF1_Project1
//
//  Created by Joel Betterly on 9/25/12.
//  Copyright (c) 2012 Joel Betterly. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface secondView : UIViewController
{
    IBOutlet UITextView *stores;
    NSString *textSelected;
}

-(IBAction)closeButton:(id)sender;

@property (nonatomic, retain) IBOutlet UITextView *stores;
@property (nonatomic, retain) NSString *textSelected;

-(id)initWithTextSelected:(NSString *)text;

@end
