//
//  IDepartment.h
//  大话设计模式
//
//  Created by 许明洋 on 2020/8/21.
//  Copyright © 2020 许明洋. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Department.h"

NS_ASSUME_NONNULL_BEGIN

///用于访问部门的接口
@protocol IDepartment <NSObject>

///新增部门
- (void)insert:(Department *)department;

///获取部门
- (Department *)getDepartment:(NSString *)departmentId;
@end

NS_ASSUME_NONNULL_END
