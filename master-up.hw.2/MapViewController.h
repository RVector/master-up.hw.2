//
//  MapViewController.h
//  master-up.hw.2
//
//  Created by RVector on 22.01.14.
//  Copyright (c) 2014 Alexey Politov. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Route;

@interface MapViewController : UIViewController
- (void)selectRoute:(Route *)selectedRoute;
@end
