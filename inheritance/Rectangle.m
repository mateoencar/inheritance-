//
//  Rectangle.m
//  inheritance
//
//  Created by mateo on 11/3/15.
//  Copyright (c) 2015 mateo. All rights reserved.
//

#import "Rectangle.h"

@implementation Rectangle
{
    XYPoint *origin;
}


-(XYPoint *) origin
{
    return origin;
}

-(void) setOrigin: (XYPoint *) pt
{
    origin = pt;
    if (!origin)
        origin = [[XYPoint alloc] init];
}

-(void) translate: (XYPoint *) pt
{
    
    origin.x = pt.x + origin.x;
    origin.y = pt.y + origin.y;
}


-(void) setWidth: (float) w andHeight: (float) h
{
    self.width = w;
    self.height = h;
}

-(float) area
{
    return self.width * self.height;
}

-(float) perimeter
{
    return (self.width + self.height) * 2;
}

-(void) doesItContain: (XYPoint *) aPoint
{
    if ([self containsPoint:aPoint]) {
        NSLog(@"it does contain that point");
    } else { NSLog(@"No");
    }
}

-(void) doesItContainTest: (XYPoint *) aPoint
{
    float xLim = self.width + self.origin.x;
    float hLim = self.height + self.origin.y;
    
    if (aPoint.x >= self.origin.x && aPoint.x <= xLim && aPoint.y >= self.origin.y && aPoint.y <= hLim) {
        
        NSLog(@"it does contain that point");
    
    }
    else {
       NSLog(@"No");
    }
    
}


-(BOOL) containsPoint: (XYPoint *) aPoint
{
    float xLim = self.width + self.origin.x;
    float hLim = self.height + self.origin.y;
    
    if (aPoint.x >= self.origin.x && aPoint.x <= xLim && aPoint.y >= self.origin.y && aPoint.y <= hLim) {
        
        return YES;

    }
    
    else {
        return NO;
    }
    
}

-(Rectangle *) intersect: (Rectangle *) aRect
{


if(aRect.origin.x <= self.origin.x <= aRect.origin.x + aRect.width && self.origin.y <= aRect.origin.y <= self.origin.y + self.height)
{
    Rectangle *interRect = [[Rectangle alloc] init];
    XYPoint *point = [[XYPoint alloc] init];

    [point setX:self.origin.x andY:aRect.origin.y];

    [interRect setWidth: aRect.width - (self.origin.x - aRect.origin.x) andHeight: self.height - (aRect.origin.y - self.origin.y)];
    
    interRect.origin = point;

    return interRect;

}
    
else if (self.origin.x <= aRect.origin.x <= self.origin.x + self.width && self.origin.y <= aRect.origin.y <= self.origin.y + self.height)
    
{
    Rectangle *interRect = [[Rectangle alloc] init];
    XYPoint *point = [[XYPoint alloc] init];
    
    [point setX:aRect.origin.x andY:aRect.origin.y];

    
    [interRect setWidth: self.width - (aRect.origin.x - self.origin.x) andHeight: self.height - (aRect.origin.y - self.origin.y)];

    interRect.origin = point;
    
    return interRect;

    
}

else if(self.origin.x <= aRect.origin.x <= self.origin.x + self.width && aRect.origin.y <= self.origin.y <= aRect.origin.y + aRect.height)

{
    Rectangle *interRect = [[Rectangle alloc] init];
    XYPoint *point = [[XYPoint alloc] init];
    
    [point setX:aRect.origin.x andY:self.origin.y];


    [interRect setWidth: self.width - (aRect.origin.x - self.origin.x) andHeight: aRect.height - (self.origin.y - aRect.origin.y)];
    
    interRect.origin = point;
    
    return interRect;

    
}

else if (self.origin.x <= aRect.origin.x + aRect.width && aRect.origin.y <= self.origin.y <= aRect.origin.y + aRect.height)

{
    Rectangle *interRect = [[Rectangle alloc] init];
    XYPoint *point = [[XYPoint alloc] init];
    
    [point setX:self.origin.x andY:self.origin.y];

    
    [interRect setWidth: aRect.width - (self.origin.x - aRect.origin.x) andHeight: aRect.height - (self.origin.y - aRect.origin.y)];
    
    interRect.origin = point;

    return interRect;

}

else {
    
    Rectangle *interRect = [[Rectangle alloc] init];
    XYPoint *point = [[XYPoint alloc] init];
    
    [point setX:0 andY:0];
    
    [interRect setWidth: 0 andHeight: 0];
    
    interRect.origin = point;
    
    return interRect;

}
    
}

-(id) initWithWidth: (float) w andHeight: (float) h {
    self = [super init];
    
    if (self)
        self.width = w;
    self.height = h;
    
    return self;
}

@end
