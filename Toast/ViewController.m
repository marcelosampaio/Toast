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

- (IBAction)activityButton:(id)sender {
    // activity
    [self showActivity];
    
}



#pragma mark - Toast Helper
-(void)toast{
    
    CSToastStyle *style = [[CSToastStyle alloc]initWithDefaultStyle];
    style.imageSize = CGSizeMake(80.0, 280.0);
    
    [self.view makeToast:@"This is a piece of toast with a title & image. This is a piece of toast with a title & image. This is a piece of toast with a title & image. This is a piece of toast with a title & image. This is a piece of toast with a title & image. This is a piece of toast with a title & image. This is a piece of toast with a title & image. FIM"
                duration:3.0
                position:[NSValue valueWithCGPoint:CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2)]
                   title:@"Toast Title"
                   image:[UIImage imageNamed:@"toastImage"]
                   style:style
              completion:^(BOOL didTap) {
                  if (didTap) {
                      NSLog(@"completion from tap");
                      [self toast];
                  } else {
                      NSLog(@"completion without tap");
                  }
              }];
    
}


-(void)showActivity{
    // display toast with an activity spinner
    [self.view makeToastActivity:CSToastPositionCenter];
    [self performSelector:@selector(hideActivity) withObject:nil afterDelay:3.5f];
}

-(void) hideActivity{
    [self.view hideToastActivity];
}


@end
