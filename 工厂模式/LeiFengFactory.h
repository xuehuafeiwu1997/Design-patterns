//
//  LeiFengFactory.h
//  大话设计模式
//
//  Created by 许明洋 on 2020/8/17.
//  Copyright © 2020 许明洋. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LeiFeng.h"

NS_ASSUME_NONNULL_BEGIN

///雷锋工厂接口
@protocol LeiFengFactory <NSObject>

///工厂方法，用于创建雷锋实例
- (id<LeiFeng>)createLeiFeng;

@end

NS_ASSUME_NONNULL_END
