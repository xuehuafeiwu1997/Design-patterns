//
//  PersonBuilder.h
//  大话设计模式
//
//  Created by 许明洋 on 2020/8/21.
//  Copyright © 2020 许明洋. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol PersonBuilder <NSObject>

///建造头部
- (void)buildHead;

///建造身体
- (void)buildBody;

///建造左手
- (void)buildArmLeft;

///建造右手
- (void)buildArmRight;

///建造左腿
- (void)buildLegLeft;

///建造右腿
- (void)buildLegRight;
@end

NS_ASSUME_NONNULL_END
