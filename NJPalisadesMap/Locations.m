//
//  Locations.m
//  NJPalisadesMap
//
//  Created by Sean Donato on 3/5/16.
//  Copyright © 2016 Sean Donato. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Locations.h"

@interface Locations ()


@end


@implementation Locations


- (void)viewDidLoad{
    
    MKPointAnnotation *vc = [[MKPointAnnotation alloc] init];
        CLLocationCoordinate2D vcCoordinate;
        vcCoordinate.latitude = 40.8508;
        vcCoordinate.longitude = -73.9627;
        vc.coordinate = vcCoordinate;
        vc.title = @"Fort Lee Historic Park Visitor Center";
        vc.subtitle = @"Visitor Center/ Museum";
    
    
    MKPointAnnotation *blockhouse = [[MKPointAnnotation alloc] init];
    CLLocationCoordinate2D blockhouseCoordinate;
    blockhouseCoordinate.latitude = 40.850001;
    blockhouseCoordinate.longitude = -73.964129;
    blockhouse.coordinate = blockhouseCoordinate;
    blockhouse.title = @"Blockhouse";
    blockhouse.subtitle = @"Blockhouse";

    MKPointAnnotation *mortar = [[MKPointAnnotation alloc] init];
    CLLocationCoordinate2D mortarCoordinate;
    mortarCoordinate.latitude = 40.853247;
    mortarCoordinate.longitude = -73.963771;
    mortar.coordinate = mortarCoordinate;
    mortar.title = @"Mortar Battery";
    mortar.subtitle = @"Mortar Battery";


    MKPointAnnotation *barbette = [[MKPointAnnotation alloc] init];
    CLLocationCoordinate2D barbetteCoordinate;
    barbetteCoordinate.latitude = 40.8508;
    barbetteCoordinate.longitude = -73.9627;
    barbette.coordinate = barbetteCoordinate;
    barbette.title = @"Barbette Battery";
    barbette.subtitle = @"Visitor Center/ Museum";


    MKPointAnnotation *soldiers = [[MKPointAnnotation alloc] init];

    MKPointAnnotation *officers = [[MKPointAnnotation alloc] init];
    
    MKPointAnnotation *firing = [[MKPointAnnotation alloc] init];

    MKPointAnnotation *mainBattery = [[MKPointAnnotation alloc] init];

    MKPointAnnotation *gwbLookout = [[MKPointAnnotation alloc] init];


}

@end