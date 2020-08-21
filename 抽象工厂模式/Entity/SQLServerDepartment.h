//
//  SQLServerDepartment.h
//  大话设计模式
//
//  Created by 许明洋 on 2020/8/21.
//  Copyright © 2020 许明洋. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IDepartment.h"

NS_ASSUME_NONNULL_BEGIN

///用于访问SQL Server中的部门
@interface SQLServerDepartment : NSObject<IDepartment>

@end

NS_ASSUME_NONNULL_END
