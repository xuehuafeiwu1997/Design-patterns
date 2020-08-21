//
//  AccessUser.m
//  大话设计模式
//
//  Created by 许明洋 on 2020/8/21.
//  Copyright © 2020 许明洋. All rights reserved.
//

#import "AccessUser.h"

@implementation AccessUser

- (void)insert:(User *)user {
    NSLog(@"在Access中给user表添加一条记录");
}

- (User *)getUser:(NSString *)userId {
    NSLog(@"在Access中根据userId得到user表的一条记录");
    return nil;
}

@end
