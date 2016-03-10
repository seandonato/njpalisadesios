//
//  MapView.h
//  NJPalisadesMap
//
//  Created by Sean Donato on 3/4/16.
//  Copyright © 2016 Sean Donato. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

#ifndef MapView_h
#define MapView_h


#endif /* MapView_h */

@interface MapView : UIViewController  <MKMapViewDelegate>

@property (strong,nonatomic) NSMutableArray *longPath;


@property (weak,nonatomic) IBOutlet UISwitch *trails;


@property (weak,nonatomic) IBOutlet MKMapView *aMap;

@property (nonatomic, retain) MKPolyline *routeLine; //your line

@property (nonatomic, retain) MKPolylineView *routeLineView; //overlay view


@property (weak,nonatomic) IBOutlet UITextView *lat;
@property (weak,nonatomic) IBOutlet UITextView *longi;
@property (weak,nonatomic) IBOutlet UIButton  *update;

- (IBAction)updateCoordinates:(id)sender;

- (IBAction) trails:(id)sender;

@property (strong,nonatomic) CLLocationManager *locationManager;

@end