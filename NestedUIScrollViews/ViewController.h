//
//  ViewController.h
//  NestedUIScrollViews
//
//  Created by ins on 11/5/13.
//  Copyright (c) 2013 UIScrollViews. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIScrollView *mScroll;
@property (weak, nonatomic) IBOutlet UIScrollView *innerScroll;
@property (weak, nonatomic) IBOutlet UIView *v1;
@property (weak, nonatomic) IBOutlet UIView *v2;
@property (weak, nonatomic) IBOutlet UIView *v3;

@end
