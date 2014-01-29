//
//  SidePanelViewController.m
//  master-up.hw.2
//
//  Created by RVector on 29.01.14.
//  Copyright (c) 2014 Alexey Politov. All rights reserved.
//

#import "SidePanelViewController.h"
#import "MapViewController.h"
#import "RoutesViewController.h"

@interface SidePanelViewController ()

@end

@implementation SidePanelViewController

-(void) awakeFromNib
{
    UINavigationController* navigationController = [self.storyboard instantiateViewControllerWithIdentifier:@"centerViewController"];
    
    MapViewController* mapViewController = (MapViewController*)[navigationController topViewController];
    RoutesViewController* routesViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"leftViewController"];
    routesViewController.mapController = mapViewController;
    
    [self setLeftPanel:routesViewController];
    [self setCenterPanel:navigationController];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
