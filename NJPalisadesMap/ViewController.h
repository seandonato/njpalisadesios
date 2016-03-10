//
//  ViewController.h
//  NJPalisadesMap
//
//  Created by Sean Donato on 3/4/16.
//  Copyright © 2016 Sean Donato. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreGraphics/CoreGraphics.h>

@interface ViewController : UIViewController


@property (weak,nonatomic) IBOutlet UIButton *njpButton;

@property (weak,nonatomic) IBOutlet UIButton *map;

@property (weak,nonatomic) IBOutlet UIButton *calendar;

@property (weak,nonatomic) IBOutlet UIButton *pOI;

@property (weak,nonatomic) IBOutlet UIButton *about;

@property(weak, nonatomic) IBOutlet NSLayoutConstraint *logoHeight;

@property(weak, nonatomic) IBOutlet NSLayoutConstraint *logoWidth;




@property (weak,nonatomic) IBOutlet UIImageView *logo;

@property (nonatomic, retain) NSTimer *timer;

- (void)buttonShower;

@end

