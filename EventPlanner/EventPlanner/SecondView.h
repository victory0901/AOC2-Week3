//
//  SecondView.h
//  EventPlanner
//
//  Created by James Floyd II on 11/8/12.
//  Copyright (c) 2012 James Floyd II. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol AddEventDelegate <NSObject>

@required
-(void)AddEvent:(NSString*)eventInfo;

@end


@interface SecondView : UIViewController
{
    IBOutlet UITextField *textField;
    IBOutlet UILabel *swipeLeft;
    IBOutlet UIButton *closeKeyboard;
    IBOutlet UIDatePicker *datePicker;
    id<AddEventDelegate> delegate;

    NSString *dateString;
    NSString *defaultText;
    
    UISwipeGestureRecognizer *leftSwiper;
}

-(void)onSwipe:(UISwipeGestureRecognizer*)recognizer;

-(IBAction)OnClose:(id)sender;
-(IBAction)OnChange:(id)sender;

@property(strong)id<AddEventDelegate> delegate;

@end
