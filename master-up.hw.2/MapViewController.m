//
//  MapViewController.m
//  master-up.hw.2
//
//  Created by RVector on 22.01.14.
//  Copyright (c) 2014 Alexey Politov. All rights reserved.
//

#import "MapViewController.h"
#import "ViewController.h"
#import "Route.h"

@interface MapViewController ()

@property (weak, nonatomic) IBOutlet UILabel *routeTitle;

@end

@implementation MapViewController
- (IBAction)longRecognized:(UILongPressGestureRecognizer *)sender {
    if ([sender state] == UIGestureRecognizerStateBegan) {
        NSLog(@"Long Press began");
    }
}

-(void)selectRoute:(Route *)selectedRoute {
    //self.routeTitle.text = selectedRoute.title;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIViewController* loginController = [self.storyboard instantiateViewControllerWithIdentifier:@"AuthNavigationController"];
    
    [self.navigationController presentViewController:loginController animated:NO completion:nil];
    
    //Notification
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(didGetMyNotification:)
                                                 name:@"SetRouteNotification"
                                               object:nil];
}

- (void)didGetMyNotification:(NSNotification*)notification
{
    NSLog(@"notification=%@",[[notification object] title]);
    self.routeTitle.text = [[notification object] title];
};

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
