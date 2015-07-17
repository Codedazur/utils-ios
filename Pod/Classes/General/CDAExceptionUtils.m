//
//  Created by Tamara Bernad on 15/06/15.
//  Copyright (c) 2015 Code d'Azur. All rights reserved.
//

#import "CDAExceptionUtils.h"

@implementation CDAExceptionUtils
+ (void)throwOverrideExceptionWithMethodName:(NSString *)methodName{
    @throw [NSException exceptionWithName:NSInternalInconsistencyException
                                   reason:[NSString stringWithFormat:@"You have to override %@ in subclass", methodName]
                                 userInfo:nil];
}
@end
