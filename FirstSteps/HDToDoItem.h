//
//  HDToDoItem.h
//  FirstSteps
//
//  Created by Gladys on 17/12/13.
//  Copyright (c) 2013 Chris. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HDToDoItem : NSObject

@property NSString *itemName;
@property BOOL completed;
@property (readonly) NSDate *creationDate;

@end
