//
//  InfoView.m
//  NJPalisadesMap
//
//  Created by Sean Donato on 3/9/16.
//  Copyright © 2016 Sean Donato. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InfoView.h"
#import "AppDelegate.h"

@interface InfoView ()

@end

@implementation InfoView

NSArray *tableData3;

AppDelegate *appD;

-(void)viewDidLoad{
    
    appD = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    if(appD.currentPoint.intValue == 0){
        
        NSString *hq = @"The Parkway Police desk is staffed at all times: 201-768-6001. The Parkway Police Court number is 201-768-8702.\r\rAdministrative offices are open Monday through Friday, 8:30 AM to 4:30 PM except on New Jersey State holidays (marked on our calendar, or click here for a listing). The main office number is 201-768-1360, and our general email account is mail@njpalisades.org. (Click here for a contact directory for all park departments.)\r\rPublic restrooms and a drinking fountain are available, and meetings of various groups, including the Citizen’s Advisory Council, are held in the building’s courtroom and in a smaller upstairs conference room.";
            _infoText.text = hq;
        
        
    }
    if(appD.currentPoint.intValue == 2){

        if(appD.currentPoint2.intValue == 0){
            NSString *flhp = @"Historic Park grounds are open daily during daylight hours. Pets are not permitted. Bicycles are not permitted beyond the parking area. At the north end of the Historic Park, two overlooks command spectacular views of the George Washington Bridge, the Hudson River, and the skyline of upper Manhattan. (Restrooms and a drinking fountain are available in season.) In the southern portion of the Historic Park, winding pathways lead past a reconstructed blockhouse to gun batteries and firing steps. Opposite the barbette battery, authentically recreated eighteenth-century soldiers’ and officers’ huts, with a well, woodshed, and baking oven, serve as the focal point for interpretive programs (check our calendar page for details).\r\rThe Visitor Center is open Wednesday through Sunday, 10 AM – 4:45 PM, with exhibits, gift shop, 150-seat auditorium, restrooms, beverage vending machine, and a water fountain. It is closed on holidays except Memorial Day, Independence Day, and Labor Day.\r\r201 461 1776\rflhp@njpalisades.org";
            _infoText.text = flhp;
        }
        
        if(appD.currentPoint2.intValue == 1){
            NSString *kh = @"The Kearney House is a historic house that is open to tour from May through October on most weekend and holiday afternoons (no fee). It is also the setting for special events based on its role as a nineteenth-century Hudson River homestead and tavern. The Kearney House is at the north end of Alpine Picnic Area (directions)./r/rThe office for the Kearney House is at our Park Headquarters: 201-768-1360 ext. 108 • kearney@njpalisades.org";
            _infoText.text = kh;

        }

    }else if(appD.currentPoint.intValue == 3){
        if(appD.currentPoint2.intValue == 0){
            NSString *apb = @"Alpine Boat Basin Picnic Area";
            _infoText.text = apb;
        }
        
        if(appD.currentPoint2.intValue == 0){
            
        }
    }

    
    
    
    
}


@end