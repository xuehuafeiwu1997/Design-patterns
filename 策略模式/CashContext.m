//
//  CashContext.m
//  大话设计模式
//
//  Created by 许明洋 on 2020/8/6.
//  Copyright © 2020 许明洋. All rights reserved.
//

#import "CashContext.h"
#import "CashNormal.h"
#import "CashReturn.h"
#import "CashRebeat.h"

@implementation CashContext

- (instancetype)initWithItemStr:(NSString *)itemStr {
    self = [super init];
    if (self) {
        [self commitInit:itemStr];
    }
    return self;
}

- (void)commitInit:(NSString *)itemStr {
    if ([itemStr isEqualToString:@"正常收费"]) {
        self.cashSuper = [[CashNormal alloc] init];
    } else if ([itemStr isEqualToString:@"满300返100"]) {
        self.cashSuper = [[CashReturn alloc] initWithMoneyCondition:300 money:100];
    } else {
        self.cashSuper = [[CashRebeat alloc] initWithMoneyRebeat:0.8];
    }
}

- (double)getResult {
    return [self.cashSuper totalPrice];
}

@end
