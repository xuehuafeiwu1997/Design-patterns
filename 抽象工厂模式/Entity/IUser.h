//
//  IUser.h
//  大话设计模式
//
//  Created by 许明洋 on 2020/8/21.
//  Copyright © 2020 许明洋. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "User.h"

NS_ASSUME_NONNULL_BEGIN

///用于访问用户的接口
@protocol IUser <NSObject>

///新增用户
- (void)insert:(User *)user;

///获取用户
- (User *)getUser:(NSString *)userId;

@end

NS_ASSUME_NONNULL_END
