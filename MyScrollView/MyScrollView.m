//
//  MyScrollView.m
//  MyScrollView
//
//  Created by Jimmy Hoang on 2017-06-12.
//  Copyright © 2017 Jimmy Hoang. All rights reserved.
//

#import "MyScrollView.h"

@implementation MyScrollView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        UIPanGestureRecognizer* panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(panAction:)];
        [self setUserInteractionEnabled:YES];
        [self addGestureRecognizer:panGesture];
        self.backgroundColor = [UIColor blackColor];
        self.frame = frame;
    }
    return self;
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/


-(void)panAction:(UIPanGestureRecognizer*)sender {
    
    CGPoint translation = [sender translationInView:self];
    CGRect movedBounds = self.bounds;
    movedBounds.origin.y = self.bounds.origin.y - translation.y;
    
    if (movedBounds.origin.y < 0) {
        movedBounds.origin.y = 0;
    }
    
    if (movedBounds.origin.y > self.contentSize.height) {
        movedBounds.origin.y = self.frame.size.height - self.contentSize.height;
    }


    [self setBounds:movedBounds];

}

@end

