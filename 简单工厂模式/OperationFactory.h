//
//  OperationFactory.h
//  大话设计模式
//
//  Created by 许明洋 on 2020/8/6.
//  Copyright © 2020 许明洋. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Operation.h"

NS_ASSUME_NONNULL_BEGIN

//简单工厂类
@interface OperationFactory : NSObject

+ (Operation *)createOperation:(OperationType)operationType;

@end

NS_ASSUME_NONNULL_END
