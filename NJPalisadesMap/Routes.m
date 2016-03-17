//
//  Routes.m
//  NJPalisadesMap
//
//  Created by Sean Donato on 3/10/16.
//  Copyright © 2016 Sean Donato. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Routes.h"

#define FBOX(x) [NSNumber numberWithDouble:x]


@interface Routes ()

@end

@implementation Routes

AppDelegate *appDelR;
static Routes *sharedMyManager;


@synthesize longPath;


#pragma mark Singleton Methods

+ (id)sharedManager {
    //was set to nil
    static dispatch_once_t onceToken;
    if(sharedMyManager == nil){
        
    dispatch_once(&onceToken, ^{
        sharedMyManager = [[self alloc] init];
    });
    }
    return sharedMyManager;
}

- (id)init {
    if (self = [super init]) {
//        [self makeRoutes];
        
    }
    return self;
}


-(void) makeRoutes{

    self->longPath = [[NSMutableArray alloc]init];


    
        //long path
        NSArray *latArray = [NSArray arrayWithObjects:
                             FBOX(40.851527), FBOX(40.851844), FBOX(40.852436), FBOX(40.852546),FBOX(40.852579),FBOX(40.853601),FBOX(40.853983),FBOX(40.854137), nil];
        
        NSArray *longArray = [NSArray arrayWithObjects:
                              FBOX(-73.962429), FBOX(-73.964027), FBOX(-73.963716), FBOX(-73.963823),FBOX(-73.964049),FBOX(-73.963587),FBOX(-73.962911),FBOX(-73.96245), nil];
        
        if (latArray.count == longArray.count) {
            for (int i = 0; i < latArray.count; i++) {
                
                double lat = [latArray[i] doubleValue];
                double lon = [longArray[i] doubleValue];
                
                CLLocation *towerLocation = [[CLLocation alloc] initWithLatitude:lat longitude:lon];
//                CLLocationCoordinate2D coor = towerLocation.coordinate;
                
                [longPath addObject:towerLocation];
                
            }
        }
        int numberOfSteps = latArray.count;
        
        CLLocationCoordinate2D coordinates[numberOfSteps];
        for (int index = 0; index < numberOfSteps; index++) {
            CLLocation *location = [longPath objectAtIndex:index];
            CLLocationCoordinate2D coordinate = location.coordinate;
            
            coordinates[index] = coordinate;
        }
        
        
        MKPolyline *longPoly = [MKPolyline polylineWithCoordinates:coordinates count:numberOfSteps];
    
    _longLine = longPoly;
    
    _nn = [NSNumber numberWithInt:1];
    
    }
-(MKPolyline *)getLine{

    return _longLine;
    

}





@end