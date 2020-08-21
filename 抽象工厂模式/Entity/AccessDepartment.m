//
//  AccessDepartment.m
//  大话设计模式
//
//  Created by 许明洋 on 2020/8/21.
//  Copyright © 2020 许明洋. All rights reserved.
//

#import "AccessDepartment.h"

@implementation AccessDepartment

- (void)insert:(Department *)department {
    NSLog(@"在Access中给Department表增加一条记录");
}

- (Department *)getDepartment:(NSString *)departmentId {
    NSLog(@"在 Access 中根据 departmentId 得到 Department 表一条记录");
    return nil;
}

@end
