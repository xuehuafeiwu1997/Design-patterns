//
//  SQLServerUser.h
//  大话设计模式
//
//  Created by 许明洋 on 2020/8/21.
//  Copyright © 2020 许明洋. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IUser.h"

NS_ASSUME_NONNULL_BEGIN

///用于访问SQL Server中的用户
@interface SQLServerUser : NSObject<IUser>


@end

NS_ASSUME_NONNULL_END
