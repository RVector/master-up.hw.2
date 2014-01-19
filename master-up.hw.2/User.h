//
//  User.h
//  master-up.hw.2
//
//  Created by RVector on 19.01.14.
//  Copyright (c) 2014 Alexey Politov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject

@property (strong, nonatomic) NSString* userName;
@property (strong, nonatomic) NSString* userPassword;

+(User*)userWithName:(NSString*)name andPassword:(NSString*)password;
-(void)login;

@end
