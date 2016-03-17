//
//  Table2.m
//  NJPalisadesMap
//
//  Created by Sean Donato on 3/9/16.
//  Copyright © 2016 Sean Donato. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AppDelegate.h"
#import "Table2.h"

@interface Table2 ()

@end

@implementation Table2

//fill this with songs, at least 1 at first from the directory swtk
NSArray *tableData2;

AppDelegate *appDel2;

int table;
int tablePoint;

- (void) viewDidLoad{
    //todo: different tabledata
    appDel2 = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    if(appDel2.currentPoint.intValue == 2){
        table = 0;
    tableData2 = [NSArray arrayWithObjects:@"Fort Lee Historic Park",@"Kearney House",@"Women's Federation Monument",nil];
    }else if(appDel2.currentPoint.intValue == 3){
        table = 1;
        tableData2 = [NSArray arrayWithObjects:@"Alpine Picnic Area/Boat Basin",@"Englewood Picnic Area/Marina",@"Ross Dock",nil];
    }
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [tableData2 count];
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableItem";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.textLabel.text = [tableData2 objectAtIndex:indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    
    NSNumber *ip2 = [NSNumber numberWithInteger:indexPath.row];
        //get number from index path (song directory)
    //    NSData *data = [NSData dataWithContentsOfFile:  [ip stringByAppendingString: @"num"]];
    //    int i;
    //    [data getBytes: &i length: sizeof(i)];
    //    NSNumber *nn = [NSNumber numberWithInt:i];
        
    appDel2.currentPoint2 = ip2;
    UITableViewController *songComp =
    [self.storyboard instantiateViewControllerWithIdentifier:@"InfoView"];
    [self.navigationController pushViewController:songComp animated:YES];
    
    
}




@end