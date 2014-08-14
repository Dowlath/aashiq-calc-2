//
//  CoredataViewController.m
//  Calculator
//
//  Created by Mubashir Meddekar on 8/12/14.
//  Copyright (c) 2014 Hibrise Technologies. All rights reserved.
//

#import "CoredataViewController.h"

@interface CoredataViewController ()

{
    int setting;
}
@end

@implementation CoredataViewController

@synthesize Value,value1,value2,display;

- (void)viewDidLoad
{
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
[super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)Add:(id)sender


{
    float x,y,result;
    
    x = ([value1.text floatValue]);
    y = ([value2.text floatValue]);

    Value = (UIButton *) sender;
    NSLog(@" %@",Value.currentTitle);
    
    
    if([[Value currentTitle]isEqualToString:@"+"])
    {
        result = x+y;
        
        [display setText:[NSString stringWithFormat:@"%f", result]];
        
    }
    else if([[Value currentTitle]isEqualToString:@"-"])
    {
        result = x-y;
        [display setText:[NSString stringWithFormat:@"%f", result]];

    }
    else if([[Value currentTitle]isEqualToString:@"*"])
    {
        result = x*y;
        [display setText:[NSString stringWithFormat:@"%f", result]];
        
    }
    else
            result = x/y;
     [display setText:[NSString stringWithFormat:@"%f", result]];
}


@end
