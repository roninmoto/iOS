//
//  CustomView.m
//  MDF1_Project1
//
//  Created by Joel Betterly on 9/26/12.
//  Copyright (c) 2012 Joel Betterly. All rights reserved.
//

#import "CustomView.h"

@implementation CustomView
@synthesize textLabel;
@synthesize storeLabel;


//Move along, these are not the droids you are looking for.

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
