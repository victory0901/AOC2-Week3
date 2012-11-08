//
//  SecondView.h
//  EventPlanner
//
//  Created by James Floyd II on 11/8/12.
//  Copyright (c) 2012 James Floyd II. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol AddEventDelegate <NSObject>

@optional
-(void)AddEvent:(NSString*)eventInfo;

@end


@interface SecondView : UIViewController
{
    IBOutlet UITextField *textField;
    IBOutlet UIButton *saveButton;
    IBOutlet UIButton *closeKeyboard;
    IBOutlet UIDatePicker *datePicker;
    
    NSString *dateString;
}

-(IBAction)OnClose:(id)sender;
-(IBAction)OnSave:(id)sender;
-(IBAction)OnChange:(id)sender;

@property(nonatomic,assign)id delegate;

@end
