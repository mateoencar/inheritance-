//
//  Square.m
//  inheritance
//
//  Created by mateo on 25/3/15.
//  Copyright (c) 2015 mateo. All rights reserved.
//

#import "Square.h"
#import "Rectangle.h"

@implementation Square

{
    Rectangle *rect;

}

-(instancetype) initWithSide: (int) s
{
    self = [super init];
    
    if (self) {
      rect = [[Rectangle alloc] init];
        rect.width = s;
        rect.height = s;
    }
        return self;
}


-(void) setSide: (int) s
{
    self.side = s;
}

-(int) side
{
    return self.side;
}

-(int) area
{
    return [rect area];
}
-(int) perimeter
{
    return [rect perimeter];
}

@end
