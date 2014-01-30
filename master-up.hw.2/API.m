//
//  API.m
//  master-up.hw.2
//
//  Created by RVector on 30.01.14.
//  Copyright (c) 2014 Alexey Politov. All rights reserved.
//

#import "API.h"
#import "Route.h"
#import "Define.h"

@implementation API

+ (API *)sharedClient {
    static API *_sharedClient = nil;
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        _sharedClient = [[API alloc] init];
    });
    
    return _sharedClient;
}

-(void)getRoutes:(void (^)(NSArray *, NSError *))block params:(NSDictionary *)params {
    
    void (^mySuccessBlock)(AFHTTPRequestOperation *operation, id responseObject) = ^(AFHTTPRequestOperation *operation, id responseObject) {
        NSArray* rawRoutes = (NSArray*) responseObject;
        
        NSMutableArray* routes = [[NSMutableArray alloc] init];
        
        for (NSDictionary* attributes in rawRoutes) {
            [routes addObject:[Route initRouteWithDictionary:attributes]];
        }
        
        if (block != nil) {
            block(routes, nil);
        }
    };
    
    void (^failureBlock)(AFHTTPRequestOperation *operation, NSError *error) = ^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Error: %@", error);
        
        if (block != nil) {
            block(nil, error);
        }
    };
    
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    
    [manager GET:ROUTES_URL parameters:nil success:mySuccessBlock failure:failureBlock];
}
@end

