//
//  Route.m
//  master-up.hw.2
//
//  Created by RVector on 19.01.14.
//  Copyright (c) 2014 Alexey Politov. All rights reserved.
//

#import "Route.h"

@implementation Route

+(Route *)initRouteWithDictionary:(NSDictionary *)attributes {
    Route* route = [[Route alloc] init];
    
    route.title = attributes[@"route_title"];
    
    return route;
}

@end
