//
//  CustomView.h
//  MDF1_Project1
//
//  Created by Joel Betterly on 9/26/12.
//  Copyright (c) 2012 Joel Betterly. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomView : UITableViewCell
{
    IBOutlet UILabel *textLabel;
    IBOutlet UILabel *storeLabel;
}

@property (strong, nonatomic)IBOutlet UILabel *textLabel;
@property (strong, nonatomic)IBOutlet UILabel *storeLabel;


@end
