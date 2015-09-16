//
//  ViewController.m
//  MinorityReport
//
//  Created by Edil Ashimov on 7/16/15.
//  Copyright (c) 2015 Edil Ashimov. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *theFutureLabel;
@property (weak, nonatomic) IBOutlet UILabel *PreCogLabel;
@property CGPoint originalCenter;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    self.originalCenter = self.theFutureLabel.center;
}

- (IBAction)panHandler:(UIGestureRecognizer *)handGesture

{
    if (handGesture.state == UIGestureRecognizerStateEnded){
        [UIView animateWithDuration: 0.5 animations:^
         {
             self.theFutureLabel.center = self.originalCenter;
             self.theFutureLabel.text = @"Go Again!";
             self.theFutureLabel.backgroundColor = [UIColor grayColor];
             [self.theFutureLabel sizeToFit];
             self.PreCogLabel.backgroundColor = [UIColor redColor];
         }];
    }
    else
    {
        CGPoint point = [handGesture locationInView:self.view];
        self.theFutureLabel.center = point;

        if (CGRectContainsPoint(self.PreCogLabel.frame, point)) {

            self.theFutureLabel.text = @"afictitiousandincriminatingfuture";
            self.theFutureLabel.backgroundColor = [UIColor redColor];
            [self.theFutureLabel sizeToFit];
            NSLog(@"panning");
        }
    }
    
}
@end











