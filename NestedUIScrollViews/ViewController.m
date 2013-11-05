//
//  ViewController.m
//  NestedUIScrollViews
//
//  Created by ins on 11/5/13.
//  Copyright (c) 2013 UIScrollViews. All rights reserved.
//

#import "ViewController.h"


@implementation ViewController

@synthesize v1, v2, v3, mScroll, innerScroll;

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setupScrollViewSize];

	// Do any additional setup after loading the view, typically from a nib.
}


-(void) viewWillLayoutSubviews{
    [self setupScrollViewSize];
    [self.innerScroll scrollRectToVisible:v2.frame animated:NO];
}


- (void) setupScrollViewSize {
    
    //setup inner scroll subviews
    CGRect mFrame = v2.frame;
    mFrame.origin.x = CGRectGetMaxX(v1.frame);
    [v2 setFrame:mFrame];
    
    //setup inner scroll content width
    self.innerScroll.contentSize = CGSizeMake(v1.frame.size.width + v2.frame.size.width, self.innerScroll.frame.size.height);
    
    //setup main scroll subviews
    CGRect eFrame = v3.frame;
    eFrame.origin.x = v1.frame.size.width + v2.frame.size.width;
    [v3 setFrame:eFrame];
    
    //setup main scroll content width
    self.mScroll.contentSize = CGSizeMake(CGRectGetMaxX(v3.frame), self.mScroll.frame.size.height);
}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
