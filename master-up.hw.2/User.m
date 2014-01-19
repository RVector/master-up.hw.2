//
//  User.m
//  master-up.hw.2
//
//  Created by RVector on 19.01.14.
//  Copyright (c) 2014 Alexey Politov. All rights reserved.
//

#import "User.h"

@implementation User

+(User *)userWithName:(NSString *)name andPassword:(NSString *)password{
    User* user = [[User alloc] init];
    
    user.userName     = name;
    user.userPassword = password;
    
    return user;
}

-(void)login{
    NSLog(@"Try to login to user %@ with password %@", self.userName, self.userPassword);
}

@end
