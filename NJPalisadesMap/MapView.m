//
//  MapView.m
//  NJPalisadesMap
//
//  Created by Sean Donato on 3/4/16.
//  Copyright © 2016 Sean Donato. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MapView.h"
#import <CoreLocation/CoreLocation.h>
#define FBOX(x) [NSNumber numberWithDouble:x]


#define METERS_PER_MILE 1609.344


@interface MapView ()

@end

@implementation MapView

NSMutableArray *steps;
CLLocation *me;

- (void)viewWillAppear:(BOOL)animated {
 
  
}


- (void)viewDidLoad{
    
    [super viewDidLoad];

    
    self.aMap.delegate = self;

    
    _longPath = [[NSMutableArray alloc] init];

    _locationManager = [[CLLocationManager alloc] init];
    [_locationManager requestWhenInUseAuthorization];

    [_locationManager startUpdatingLocation];
    
    me = _locationManager.location;
    
    CLLocationCoordinate2D zoomLocation;
    zoomLocation.latitude = me.coordinate.latitude;
    zoomLocation.longitude= me.coordinate.longitude;
    
    NSString * latS = [NSString stringWithFormat:@"%f", me.coordinate.latitude];
    _lat.text = latS;
    NSString * loS = [NSString stringWithFormat:@"%f", me.coordinate.longitude];
    _longi.text = loS;
    
    MKCoordinateRegion viewRegion = MKCoordinateRegionMakeWithDistance(zoomLocation, 0.5*METERS_PER_MILE, 0.5*METERS_PER_MILE);
    
    [_aMap setRegion:viewRegion animated:YES];
    
    MKCircle *myP = [MKCircle circleWithCenterCoordinate:zoomLocation radius:10];
    
    MKPointAnnotation *point = [[MKPointAnnotation alloc] init];
    
    CLLocationCoordinate2D vcCoordinate;
    
    vcCoordinate.latitude = 40.8508;
    vcCoordinate.longitude = -73.9627;

    point.coordinate = vcCoordinate;
    
    point.title = @"Fort Lee Historic Park Visitor Center";
    point.subtitle = @"Visitor Center/ Museum";
    
    [_aMap addAnnotation:point];

}

- (IBAction)updateCoordinates:(id)sender{

    NSString * latS = [NSString stringWithFormat:@"%f", me.coordinate.latitude];
    _lat.text = latS;
    NSString * loS = [NSString stringWithFormat:@"%f", me.coordinate.longitude];
    _longi.text = loS;

}

- (IBAction) trails:(id)sender{
    
    NSArray *latArray = [NSArray arrayWithObjects:
                        FBOX(40.851527), FBOX(40.851844), FBOX(40.852436), FBOX(40.852671),FBOX(40.854363),FBOX(40.854342),FBOX(40.85401), nil];
    
    NSArray *longArray = [NSArray arrayWithObjects:
                         FBOX(-73.962429), FBOX(-73.964027), FBOX(-73.963716), FBOX(-73.964006),FBOX(-73.963311),FBOX(-73.962907),FBOX(-73.962815), nil];
    
    if (latArray.count == longArray.count) {
        for (int i = 0; i < latArray.count; i++) {
            
            double lat = [latArray[i] doubleValue];
            double lon = [longArray[i] doubleValue];
            
            CLLocation *towerLocation = [[CLLocation alloc] initWithLatitude:lat longitude:lon];
            CLLocationCoordinate2D coor = towerLocation.coordinate;

            [_longPath addObject:towerLocation];
            
        }
    }
    int numberOfSteps = _longPath.count;
    
    CLLocationCoordinate2D coordinates[numberOfSteps];
    for (int index = 0; index < numberOfSteps; index++) {
        CLLocation *location = [_longPath objectAtIndex:index];
        CLLocationCoordinate2D coordinate = location.coordinate;
        
        coordinates[index] = coordinate;
    }
    
    _routeLine = [MKPolyline polylineWithCoordinates:coordinates count:numberOfSteps];
    
    
//    [_aMap addOverlay:polyLine];

    
    [_aMap setVisibleMapRect:[_routeLine boundingMapRect]];
    
    [_aMap addOverlay:_routeLine];
    
    
}

- (MKOverlayView *)mapView:(MKMapView *)mapView viewForOverlay:(id<MKOverlay>)overlay
{
    
    MKPolylineView *polylineView = [[MKPolylineView alloc] initWithPolyline:overlay];
    polylineView.strokeColor = [UIColor redColor];
    polylineView.lineWidth = 1.0;
    
    
    return polylineView;
}



@end