//
//  AccessFactory.m
//  大话设计模式
//
//  Created by 许明洋 on 2020/8/21.
//  Copyright © 2020 许明洋. All rights reserved.
//

#import "AccessFactory.h"
#import "AccessUser.h"
#import "AccessDepartment.h"

@implementation AccessFactory

- (nonnull id<IUser>)createUser {
    return [[AccessUser alloc] init];
}

- (nonnull id<IDepartment>)createDepartment {
    return [[AccessDepartment alloc] init];
}

@end
