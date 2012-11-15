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

@synthesize delegate;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
        
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
        if (dateString != nil)
        {
            [textField resignFirstResponder];
            NSString *tempString = textField.text;
            NSString *eventInfo = [NSString stringWithFormat:@"New Event: %@ \n%@\n \n", tempString, dateString];
        
            NSLog(@"%@", eventInfo);
        
            [self dismissViewControllerAnimated:TRUE completion:nil];
            if (delegate != nil)
            {
            [delegate AddEvent:eventInfo];
            }
        }
        else
        {
            NSDate *date = [NSDate date];
            NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
            [dateFormat setDateFormat:@"MMM d, yyyy hh:mm aaa"];
            dateString = [dateFormat stringFromDate:date];
            [textField resignFirstResponder];
            NSString *tempString = textField.text;
            NSString *eventInfo = [NSString stringWithFormat:@"New Event: %@ \n%@\n \n", tempString, dateString];
            
            NSLog(@"%@", eventInfo);
            
            [self dismissViewControllerAnimated:TRUE completion:nil];
            if (delegate != nil)
            {
                [delegate AddEvent:eventInfo];
            }
        }
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
        dateString = [dateFormat stringFromDate:date];
        
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
