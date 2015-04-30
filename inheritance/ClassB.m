//
//  ClassB.m
//  inheritance
//
//  Created by mateo on 11/3/15.
//  Copyright (c) 2015 mateo. All rights reserved.
//

#import "ClassB.h"

@implementation ClassB

-(void) initVar
{
    self.x = 200;
}

-(void) printVar
{
    NSLog(@"x = %i", self.x);
}



@end
