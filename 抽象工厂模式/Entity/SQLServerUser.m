//
//  SQLServerUser.m
//  大话设计模式
//
//  Created by 许明洋 on 2020/8/21.
//  Copyright © 2020 许明洋. All rights reserved.
//

#import "SQLServerUser.h"

@implementation SQLServerUser

- (void)insert:(User *)user {
    NSLog(@"在SQL Server中给user添加一条记录");
}

- (User *)getUser:(NSString *)userId {
    NSLog(@"在SQL Server中根据userId得到User表的一条记录");
    return nil;
}

@end
