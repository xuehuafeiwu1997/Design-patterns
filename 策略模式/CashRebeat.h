//
//  CashRebeat.h
//  大话设计模式
//
//  Created by 许明洋 on 2020/8/6.
//  Copyright © 2020 许明洋. All rights reserved.
//

#import "CashSuper.h"

NS_ASSUME_NONNULL_BEGIN

@interface CashRebeat : CashSuper

//打折率，为小数
@property (nonatomic, assign) double moneyRebeat;
- (instancetype)initWithMoneyRebeat:(double)moneyRebeat;

@end

NS_ASSUME_NONNULL_END
