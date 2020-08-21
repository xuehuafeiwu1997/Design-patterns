//
//  SQLServerDepartment.m
//  大话设计模式
//
//  Created by 许明洋 on 2020/8/21.
//  Copyright © 2020 许明洋. All rights reserved.
//

#import "SQLServerDepartment.h"

@implementation SQLServerDepartment

- (void)insert:(Department *)department {
    NSLog(@"在SQl Server中给department表增加了一条记录");
}

- (Department *)getDepartment:(NSString *)departmentId {
    NSLog(@"在SQl Server中根据departmentId得到department表的一条记录");
    return nil;
}



@end
