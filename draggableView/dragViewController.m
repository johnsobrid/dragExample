//
//  dragViewController.m
//  draggableView
//
//  Created by Bridget Johnson on 21/06/14.
//  Copyright (c) 2014 bdj. All rights reserved.
//

#import "dragViewController.h"

@interface dragViewController ()

@end

@implementation dragViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
   
   //this is where we make the frame for the view, super similar to drawing a rect in Processing
   CGRect frame = CGRectMake(100, 100, 100, 100);
   
   //this is making the view exist
   dragView *draggableView = [[dragView alloc]initWithFrame:frame];
   
   //here we add a panning gesture to the view, the target is the view we are trying to add it to (not self as we are still in the controller), the action is the method we want to be called when the gesture is recognised
   [draggableView addGestureRecognizer:[[UIPanGestureRecognizer alloc]initWithTarget:draggableView action:@selector(dragging:)]];
   
   
   //this is the line we forgot, it is what actually adds the new view to the superview (the main screen)
   [[self view]addSubview:draggableView];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
