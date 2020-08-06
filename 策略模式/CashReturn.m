//
//  CashReturn.m
//  大话设计模式
//
//  Created by 许明洋 on 2020/8/6.
//  Copyright © 2020 许明洋. All rights reserved.
//

#import "CashReturn.h"

@implementation CashReturn

- (instancetype)initWithMoneyCondition:(double)moneyCondition money:(double)moneyReturn {
    self = [super init];
    if (self) {
        self.moneyCondition = moneyCondition;
        self.moneyReturn = moneyReturn;
    }
    return self;
}

- (double)totalPrice {
    double total = self.signalPrice * self.number;
    return total - (int)(total / self.moneyCondition) * self.moneyReturn;
}

@end
