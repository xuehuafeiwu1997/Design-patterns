//
//  CashReturn.h
//  大话设计模式
//
//  Created by 许明洋 on 2020/8/6.
//  Copyright © 2020 许明洋. All rights reserved.
//

#import "CashSuper.h"

NS_ASSUME_NONNULL_BEGIN

@interface CashReturn : CashSuper

//返利条件
@property (nonatomic, assign) double moneyCondition;
//返利值
@property (nonatomic, assign) double moneyReturn;

- (instancetype)initWithMoneyCondition:(double)moneyCondition money:(double)moneyReturn;

@end

NS_ASSUME_NONNULL_END
