//
//  Work.h
//  大话设计模式
//
//  Created by 许明洋 on 2020/8/21.
//  Copyright © 2020 许明洋. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "State.h"

NS_ASSUME_NONNULL_BEGIN

@interface Work : NSObject

///当前工作状态
@property (nonatomic, strong) id<State> state;

///'钟点'属性,状态转换的依据
@property (nonatomic, assign) CGFloat hour;

///'任务完成'属性,是否能下班的依据,
@property (nonatomic) BOOL finished;

///写程序
- (void)writeProgram;

@end

NS_ASSUME_NONNULL_END
