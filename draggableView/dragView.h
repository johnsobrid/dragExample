//
//  dragView.h
//  draggableView
//
//  Created by Bridget Johnson on 21/06/14.
//  Copyright (c) 2014 bdj. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface dragView : UIView

//this needs to be public so our controller can call it
-(void) dragging:(UIPanGestureRecognizer *)drag;

@end
