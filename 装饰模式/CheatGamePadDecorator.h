//
//  CheatGamePadDecoratr.h
//  大话设计模式
//
//  Created by 许明洋 on 2020/8/17.
//  Copyright © 2020 许明洋. All rights reserved.
//装饰模式有效地把类的核心职责和装饰功能区分开了，而且可以去除相关类中重复的装饰逻辑

#import "GamePadDecorator.h"

NS_ASSUME_NONNULL_BEGIN

@interface CheatGamePadDecorator : GamePadDecorator

- (void)cheat;

@end

NS_ASSUME_NONNULL_END
