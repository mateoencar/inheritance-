//
//  Square.h
//  inheritance
//
//  Created by mateo on 25/3/15.
//  Copyright (c) 2015 mateo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Square : NSObject
-(instancetype) initWithSide: (int) s;
-(void) setSide: (int) s;
-(int) side;
-(int) area;
-(int) perimeter;

@end
