//
//  RoutesViewController.m
//  master-up.hw.2
//
//  Created by RVector on 29.01.14.
//  Copyright (c) 2014 Alexey Politov. All rights reserved.
//

#import "RoutesViewController.h"
#import "MapViewController.h"
#import "Route.h"
#import "API.h"

#import <MBProgressHUD.h>

@interface RoutesViewController ()

@property (strong, nonatomic) NSArray* routes;

@end

@implementation RoutesViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [[API sharedClient] getRoutes:^(NSArray *routes, NSError *error) {
        self.routes = routes;
        [self.tableView reloadData];
    } params:nil];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

/*
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 0;
}
*/
 
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSLog(@"count=%lu", (unsigned long)self.routes.count);
    return self.routes.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    Route* route = (Route*)self.routes[indexPath.row];
    cell.textLabel.text = route.title;
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    Route* route = (Route*)self.routes[indexPath.row];
    
    NSLog(@"%@", route.title);
    
    //[self.mapController selectRoute:route];
    JASidePanelController* sideController = self.sidePanelController;
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"SetRouteNotification" object:route];
    
    [sideController showCenterPanelAnimated:YES];
}


@end
