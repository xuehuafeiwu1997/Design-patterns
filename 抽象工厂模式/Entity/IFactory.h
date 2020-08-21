//
//  IFactory.h
//  大话设计模式
//
//  Created by 许明洋 on 2020/8/21.
//  Copyright © 2020 许明洋. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IUser.h"
#import "IDepartment.h"

NS_ASSUME_NONNULL_BEGIN

///抽象工厂接口
@protocol IFactory <NSObject>

///创建用于访问用户的对象
- (id<IUser>)createUser;

///创建用于访问部门的对象
- (id<IDepartment>)createDepartment;
@end

NS_ASSUME_NONNULL_END
