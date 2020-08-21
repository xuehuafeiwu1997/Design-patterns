//
//  SQLServerFactory.m
//  大话设计模式
//
//  Created by 许明洋 on 2020/8/21.
//  Copyright © 2020 许明洋. All rights reserved.
//

#import "SQLServerFactory.h"
#import "SQLServerUser.h"
#import "SQLServerDepartment.h"

@implementation SQLServerFactory

- (nonnull id<IUser>)createUser {
    return [[SQLServerUser alloc] init];
}

- (nonnull id<IDepartment>)createDepartment {
    return [[SQLServerDepartment alloc] init];
}

@end
