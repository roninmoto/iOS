//
//  HPComputer.m
//  AOC2_Project1
//
//  Created by Joel Betterly on 8/28/12.
//  Copyright (c) 2012 Joel Betterly. All rights reserved.
//

#import "HPComputer.h"

@implementation HPComputer


-(id)init

{
    if (self = [super init]) {
        
        count = 1;
        classType = @"HP";
        CPUType = @"AMD QuadCore";
        CPU_Speed = 2;
        HD_Size = 2;
        cost = 2;
        video = 0;
        
    }
    return self;
};

-(void)setVideo:(int)newVideo
{
    video = newVideo;
}

-(int)getVideo
{
    video = (int) (count * video);
    NSLog(@"cost of add-on video card is %i.", video);
    return video;
}

@end
