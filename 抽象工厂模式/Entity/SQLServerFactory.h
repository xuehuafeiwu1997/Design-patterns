//
//  SQLServerFactory.h
//  大话设计模式
//
//  Created by 许明洋 on 2020/8/21.
//  Copyright © 2020 许明洋. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IFactory.h"

NS_ASSUME_NONNULL_BEGIN

/// 创建用于访问 SQL Server 对象的工厂类
@interface SQLServerFactory : NSObject<IFactory>

@end

NS_ASSUME_NONNULL_END
