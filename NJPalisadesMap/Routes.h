//
//  Routes.h
//  NJPalisadesMap
//
//  Created by Sean Donato on 3/10/16.
//  Copyright © 2016 Sean Donato. All rights reserved.
//
#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>
#import <CoreData/CoreData.h>
#import "AppDelegate.h"

#ifndef Routes_h
#define Routes_h


#endif /* Routes_h */


@interface Routes : NSObject

+ (id)sharedManager;


-(void) makeRoutes;

@property (nonatomic,strong) NSManagedObjectContext* managedObjectContext;

@property (strong, retain) NSMutableArray *longPath;
@property (strong, retain) NSNumber *nn;


@property (strong,retain) MKPolyline *longLine;

@property (strong,nonatomic) NSMutableArray *shore;

@property (strong,nonatomic) NSMutableArray *carpenters;

@property (strong,nonatomic) NSMutableArray *dyckman;

@property (strong,nonatomic) NSMutableArray *huylers;

@property (strong,nonatomic) NSMutableArray *closter;

@property (strong,nonatomic) NSMutableArray *forest;

@property (strong,nonatomic) NSMutableArray *flhp;


@property (strong, retain) NSString *someProperty;

-(MKPolyline *)getLine;


@end