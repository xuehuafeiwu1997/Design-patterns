//
//  CashNormal.m
//  大话设计模式
//
//  Created by 许明洋 on 2020/8/6.
//  Copyright © 2020 许明洋. All rights reserved.
//

#import "CashNormal.h"

@implementation CashNormal

//正常收费
- (double)totalPrice {
    return self.signalPrice * self.number;
}

@end
