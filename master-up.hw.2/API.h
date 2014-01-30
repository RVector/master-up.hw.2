//
//  API.h
//  master-up.hw.2
//
//  Created by RVector on 30.01.14.
//  Copyright (c) 2014 Alexey Politov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AFNetworking.h>

@interface API : NSObject

+ (API *)sharedClient;
- (void)getRoutes:(void (^)(NSArray *routes, NSError *error))block params:(NSDictionary *)params;

@end