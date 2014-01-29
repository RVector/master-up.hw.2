//
//  ViewController.m
//  master-up.hw.2
//
//  Created by RVector on 19.01.14.
//  Copyright (c) 2014 Alexey Politov. All rights reserved.
//

#import "ViewController.h"
#import "User.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *txtLogin;
@property (weak, nonatomic) IBOutlet UITextField *txtPassword;

@end

@implementation ViewController

- (IBAction)actionLogin:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
    
    User* user = [User userWithName:self.txtLogin.text andPassword:self.txtPassword.text];
    [user login];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationController.navigationBarHidden = YES;
}

-(void)viewWillAppear:(BOOL)animated {
    
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:YES animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
