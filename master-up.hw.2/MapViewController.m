//
//  MapViewController.m
//  master-up.hw.2
//
//  Created by RVector on 22.01.14.
//  Copyright (c) 2014 Alexey Politov. All rights reserved.
//

#import "MapViewController.h"

@interface MapViewController ()

@property (weak, nonatomic) IBOutlet UILabel *routeTitle;

@end

@implementation MapViewController
- (IBAction)longRecognized:(UILongPressGestureRecognizer *)sender {
    if ([sender state] == UIGestureRecognizerStateBegan) {
        NSLog(@"Long Press began");
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIViewController* loginController = [self.storyboard instantiateViewControllerWithIdentifier:@"AuthNavigationController"];
    
    [self.navigationController presentViewController:loginController animated:NO completion:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
