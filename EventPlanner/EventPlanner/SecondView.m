//
//  SecondView.m
//  EventPlanner
//
//  Created by James Floyd II on 11/8/12.
//  Copyright (c) 2012 James Floyd II. All rights reserved.
//

#import "SecondView.h"

@interface SecondView ()

@end

@implementation SecondView

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

-(IBAction)OnClose:(id)sender
{
    [textField resignFirstResponder];
}

-(IBAction)OnSave:(id)sender
{
    UIButton *button = (UIButton*)sender;
    if (button != nil)
    {
        [textField resignFirstResponder];
        NSString *tempString = textField.text;
        NSLog(@"%@", tempString);
    }
}

-(IBAction)OnChange:(id)sender
{
    UIDatePicker *picker = (UIDatePicker*)sender;
    if (picker != nil)
    {
        datePicker.minimumDate = [NSDate date];
        NSDate *date = picker.date;
        NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
        [dateFormat setDateFormat:@"MMM d, yyyy hh:mm aaa"];
        NSString *dateString = [dateFormat stringFromDate:date];
        NSLog(@"date = %@", dateString);
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
