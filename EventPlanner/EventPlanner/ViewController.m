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
    rightSwiper = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onSwipe:)];
    rightSwiper.direction = UISwipeGestureRecognizerDirectionRight;
    [swipeRight addGestureRecognizer:rightSwiper];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)onSwipe:(UISwipeGestureRecognizer*)recognizer
{
    if (recognizer.direction == UISwipeGestureRecognizerDirectionRight)
    {
        SecondView *viewController = [[SecondView alloc] initWithNibName:@"SecondView" bundle:nil];
        if (viewController != nil)
        {
            viewController.delegate = self;
            [self presentViewController:viewController animated:TRUE completion:nil];
        }
    }
}


-(void)AddEvent:(NSString*)eventInfo
{
    textview.text = [textview.text stringByAppendingString:eventInfo];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
