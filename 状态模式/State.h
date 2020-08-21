//
//  State.h
//  大话设计模式
//
//  Created by 许明洋 on 2020/8/21.
//  Copyright © 2020 许明洋. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class Work;
@protocol State <NSObject>

///写程序
///
///param work 工作对象
- (void)writeProgram:(Work *)work;

@end

NS_ASSUME_NONNULL_END
