//
//  ViewController.m
//  NJPalisadesMap
//
//  Created by Sean Donato on 3/4/16.
//  Copyright © 2016 Sean Donato. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"

@interface ViewController ()

@end

int tracker;

AppDelegate *appDel;

@implementation ViewController

-(void)viewWillAppear:(BOOL)animated{

    [self.navigationController setNavigationBarHidden:YES animated:YES];

}

-(void)viewDidAppear:(BOOL)animated{

    appDel = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    
    // Do any additional setup after loading the view, typically from a nib.
    int currentValue = (int)[appDel.logoState intValue];
    
    if(currentValue == 1){
        
        //TODO resize the image
        CGFloat sW = [[UIScreen mainScreen] bounds].size.width;
        
        CGPoint newSpot = CGPointMake(sW/2, 500);
//        
//        [UIView beginAnimations:nil context:nil];
//        [_logo setAnimationDuration:0];
//        [UIView setAnimationCurve:UIViewAnimationCurveLinear];
        
//        _logo.transform = CGAffineTransformMakeScale(0.6f, 0.6f); // shrink to half.
        
        
//            _logo.center = newSpot;
        
//            [UIView commitAnimations];
            
    }
    
}

- (void)viewDidLoad {

    tracker = 0;
    [super viewDidLoad];
    appDel.logoState = [NSNumber numberWithInt:0];
    // Do any additional setup after loading the view, typically from a nib.

   }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)animateLogo:(id)sender{

    appDel.logoState = [NSNumber numberWithInt:1];
    _njpButton.enabled = NO;

    CGFloat sH = [[UIScreen mainScreen] bounds].size.height;
    CGFloat sW = [[UIScreen mainScreen] bounds].size.width;
    CGFloat iH = _logo.center.y;
    CGFloat iW = _logo.center.x;

    CGPoint newSpot = CGPointMake(sW/2, 150);
    
    [UIView beginAnimations:nil context:nil];
    [_logo setAnimationDuration:1];
    [UIView setAnimationCurve:UIViewAnimationCurveLinear];
    
    _logo.transform = CGAffineTransformMakeScale(0.6f, 0.6f); // shrink to half.
    
    
    [UIView animateWithDuration:0.5f animations:^{
    
        _logo.center = newSpot;
        
        [UIView commitAnimations];

    }];
    
    _timer = [NSTimer scheduledTimerWithTimeInterval:.2 target:self selector:@selector(buttonShower) userInfo:nil repeats:YES];

    
}

    
- (void)viewWillDisappear:(BOOL)animated {
    
    [self.navigationController setNavigationBarHidden:NO animated:NO];

    
}


- (void)buttonShower{
    
//
//    
//    int temp = (int)[appDel.logoState intValue];
//    
//    if (temp == 0) {
        switch (tracker) {
            
            case 0:
                _about.hidden = NO;
                tracker = 1;
                break;
            
            case 1:
                _calendar.hidden = NO;
                tracker = 2;
                break;
            
            case 2:
                _pOI.hidden = NO;
                tracker = 3;
                break;
            
            case 3:
                _map.hidden = NO;
                [_timer invalidate];
                _timer = nil;
                break;
            
        }
//    }else{
//        _about.hidden = NO;
//        _calendar.hidden = NO;
//        _pOI.hidden = NO;
//        _map.hidden = NO;
//        
//    }
    
}




@end
