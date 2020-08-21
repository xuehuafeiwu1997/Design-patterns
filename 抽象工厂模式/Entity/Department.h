//
//  Department.h
//  大话设计模式
//
//  Created by 许明洋 on 2020/8/21.
//  Copyright © 2020 许明洋. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

///部门类
@interface Department : NSObject

///部门id
@property (nonatomic, copy) NSString *departmentId;

///部门名称
@property (nonatomic, copy) NSString *departmentName;

@end

NS_ASSUME_NONNULL_END
