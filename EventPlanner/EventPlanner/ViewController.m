//
//  ViewController.m
//  EventPlanner
//
//  Created by James Floyd II on 11/7/12.
//  Copyright (c) 2012 James Floyd II. All rights reserved.
//

#import "ViewController.h"
#import "SecondView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillShow) name:UIKeyboardWillShowNotification object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillHide) name:UIKeyboardWillHideNotification object:nil];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)keyboarddWillShow:(NSNotification *)notification
{
    
}

-(void)keyboarddWillHide:(NSNotification *)notification
{
    
}

-(IBAction)OnClick:(id)sender
{
    SecondView *viewController = [[SecondView alloc] initWithNibName:@"SecondView" bundle:nil];
    if (viewController != nil)
    {
        [self presentViewController:viewController animated:TRUE completion:nil];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
