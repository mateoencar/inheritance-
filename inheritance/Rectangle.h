//
//  Rectangle.h
//  inheritance
//
//  Created by mateo on 11/3/15.
//  Copyright (c) 2015 mateo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XYPoint.h"


@interface Rectangle : NSObject

@property float width, height;

-(XYPoint *)origin;
-(void) setOrigin: (XYPoint *) pt;
-(void) setWidth: (float) w andHeight: (float) h;
-(float) area;
-(float) perimeter;
-(void) translate: (XYPoint *) pt;
-(void) doesItContain: (XYPoint *) aPoint;
-(void) doesItContainTest: (XYPoint *) pt;
-(BOOL) containsPoint: (XYPoint *) aPoint;
-(Rectangle *) intersect: (Rectangle *) aRect;
-(id) initWithWidth: (float) w andHeight: (float) h;

@end
