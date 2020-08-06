//
//  CashRebeat.m
//  大话设计模式
//
//  Created by 许明洋 on 2020/8/6.
//  Copyright © 2020 许明洋. All rights reserved.
//

#import "CashRebeat.h"

@implementation CashRebeat

- (instancetype)initWithMoneyRebeat:(double)moneyRebeat {
    self = [super init];
    if (self) {
        self.moneyRebeat = moneyRebeat;
    }
    return self;
}

- (double)totalPrice {
    return self.signalPrice * self.number * self.moneyRebeat;
}

@end
