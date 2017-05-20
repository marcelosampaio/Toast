//
//  ViewController.m
//  Toast
//
//  Created by Marcelo Sampaio on 5/20/17.
//  Copyright © 2017 Marcelo Sampaio. All rights reserved.
//

#import "ViewController.h"
#import "UIView+Toast.h"

@interface ViewController ()

@end

@implementation ViewController



#pragma mark - View Life Cycle
- (void)viewDidLoad {
    [super viewDidLoad];

}

#pragma mark - UI Actions
- (IBAction)showButton:(id)sender {
    // toast
    [self toast];
}


#pragma mark - Toast Helper
-(void)toast{
    
    [self.view makeToast:@"This is a piece of toast with a title & image"
                duration:3.0
                position:[NSValue valueWithCGPoint:CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2)]
                   title:@"Toast Title"
                   image:[UIImage imageNamed:@"toastImage"]
                   style:nil
              completion:^(BOOL didTap) {
                  if (didTap) {
                      NSLog(@"completion from tap");
                  } else {
                      NSLog(@"completion without tap");
                  }
              }];
    
}


@end
