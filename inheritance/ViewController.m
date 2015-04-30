//
//  ViewController.m
//  inheritance
//
//  Created by mateo on 11/3/15.
//  Copyright (c) 2015 mateo. All rights reserved.
//

#import "ViewController.h"
#import "ClassA.h"
#import "ClassB.h"
#import "ClassC.h"
#import "XYPoint.h"
#import "Rectangle.h"
#import "Square.h"


@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    /*
    
    Rectangle *myRect = [[Rectangle alloc] init];
    XYPoint *myPoint = [[XYPoint alloc] init];
    XYPoint *pointTwo = [[XYPoint alloc] init];

    
    [myPoint setX: 100 andY: 200];
    [pointTwo setX: 101 andY: 201];
    
    [myRect setWidth: 5 andHeight: 8];
    myRect.origin = myPoint;
    [myRect doesItContain:pointTwo];
     
    
    
    Rectangle *myRect = [[Rectangle alloc] init];
    
    XYPoint *pointOne = [[XYPoint alloc] init];
    
    [pointOne setX:400 andY:300];
    [myRect setWidth: 100 andHeight: 180];
    myRect.origin = pointOne;
    
    Rectangle *test = [[Rectangle alloc] init];
    
    XYPoint *pointTwo = [[XYPoint alloc] init];
    
    [pointTwo setX:200 andY:420];
    [test setWidth: 250 andHeight: 75];
    test.origin = pointTwo;

    Rectangle *result = [myRect intersect:test];
    
    
    NSLog(@"The overlaping area has an origin of (%f, %f) and dimentions of width = %f and height = %f", result.origin.x, result.origin.y, result.width, result.height);
    
  
    
    Rectangle *myRect = [[Rectangle alloc] initWithWidth:5 andHeight:7];
    
    NSLog(@"%f %f", myRect.height, myRect.width);
     
       */
    

    
    Square *mySquare = [[Square alloc] initWithSide: 5 ];
    NSLog(@"%i = area %i = perimeter", [mySquare area], [mySquare perimeter]);
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
