//
//  ViewController.h
//  EventPlanner
//
//  Created by James Floyd II on 11/7/12.
//  Copyright (c) 2012 James Floyd II. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondView.h"
@interface ViewController : UIViewController <AddEventDelegate>
{
    IBOutlet UITextView *textview;
}

-(IBAction)OnClick:(id)sender;
@end
