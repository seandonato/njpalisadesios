//
//  PointsTable.m
//  NJPalisadesMap
//
//  Created by Sean Donato on 3/9/16.
//  Copyright © 2016 Sean Donato. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AppDelegate.h"
#import "PointsTable.h"

@interface PointsTable ()


@end

@implementation PointsTable

//fill this with songs, at least 1 at first from the directory swtk
NSArray *tableData;
AppDelegate *appDelegate;


- (void) viewDidLoad{
    
    appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    
    
  tableData = [NSArray arrayWithObjects:@"Park Headquarters",@"State Line Look Out",@"Historic Sites",@"Picnic Areas/Boat Basins",@"Greenbrook Sanctuary",nil];
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [tableData count];
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableItem";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.textLabel.text = [tableData objectAtIndex:indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    NSString *str = cell.textLabel.text;
    
    
    NSNumber *ip = [NSNumber numberWithInteger:indexPath.row];
    
    if(ip.intValue == 0  || ip.intValue == 1 || ip.intValue == 4){
        
        appDelegate.currentPoint = ip;

        UITableViewController *nextView =
        [self.storyboard instantiateViewControllerWithIdentifier:@"InfoView"];
        [self.navigationController pushViewController:nextView animated:YES];

    }else{
        
    appDelegate.currentPoint = ip;
    
    UITableViewController *songComp =
    [self.storyboard instantiateViewControllerWithIdentifier:@"table2"];
    [self.navigationController pushViewController:songComp animated:YES];
    
    }
}




@end