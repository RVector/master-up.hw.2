//
//  Route.h
//  master-up.hw.2
//
//  Created by RVector on 19.01.14.
//  Copyright (c) 2014 Alexey Politov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Route : NSObject

@property (nonatomic) NSString* title;

+(Route *)initRouteWithDictionary:(NSDictionary *)attributes;

@end
