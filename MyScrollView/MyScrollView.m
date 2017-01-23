//
//  MyScrollView.m
//  MyScrollView
//
//  Created by Pierre Binon on 2017-01-23.
//  Copyright © 2017 Pierre Binon. All rights reserved.
//

#import "MyScrollView.h"
#import "ViewController.h"

@implementation MyScrollView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        UIPanGestureRecognizer *gestureRecognizer = [[UIPanGestureRecognizer alloc]
                                                     initWithTarget:self action:@selector(handlePanGesture:)];
        [self addGestureRecognizer:gestureRecognizer];
    }
    return self;
}


- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self == nil) {
        return nil;
    }
    UIPanGestureRecognizer *gestureRecognizer = [[UIPanGestureRecognizer alloc]
                                                 initWithTarget:self action:@selector(handlePanGesture:)];
    [self addGestureRecognizer:gestureRecognizer];
    
    return self;
}




- (void) handlePanGesture: (UIPanGestureRecognizer *) gestureRecognizer {
    CGPoint translation = [gestureRecognizer translationInView: self];
    CGRect frame = self.frame;
    
    //frame.origin.x += translation.x;
    frame.origin.y += translation.y;
    
    self.frame = frame;
    [gestureRecognizer setTranslation:CGPointZero inView: self];
    
}

@end
