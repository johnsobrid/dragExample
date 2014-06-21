//
//  dragView.m
//  draggableView
//
//  Created by Bridget Johnson on 21/06/14.
//  Copyright (c) 2014 bdj. All rights reserved.
//

#import "dragView.h"

@implementation dragView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
       
       //we set the background colour of the view
       [self setBackgroundColor:[UIColor redColor]];
    }
    return self;
}


// here is our same dragging function 
-(void)dragging:(UIPanGestureRecognizer *)drag
{
   if (drag.state == UIGestureRecognizerStateBegan || drag.state == UIGestureRecognizerStateChanged) {
      CGPoint delta = [drag translationInView:self];
      CGPoint centre = self.center;
      centre.x += delta.x;
      centre.y += delta.y;
      self.center = centre;
      [drag setTranslation:CGPointZero inView:self];
   }
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
   
}
*/

@end
