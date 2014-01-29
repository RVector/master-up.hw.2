//
//  RoutesViewController.h
//  master-up.hw.2
//
//  Created by RVector on 29.01.14.
//  Copyright (c) 2014 Alexey Politov. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <JASidePanelController.h>
#import <UIViewController+JASidePanel.h>

@class MapViewController;

@interface RoutesViewController : UITableViewController

@property (strong, nonatomic) MapViewController* mapController;

@end

