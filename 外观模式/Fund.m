//
//  Fund.m
//  大话设计模式
//
//  Created by 许明洋 on 2020/8/21.
//  Copyright © 2020 许明洋. All rights reserved.
//

#import "Fund.h"
#import "NationalDebt1.h"
#import "Realty1.h"
#import "Stock1.h"
#import "Stock2.h"
#import "Stock3.h"

@interface Fund()

@property (nonatomic, strong) NationalDebt1 *nationalDebt1;
@property (nonatomic, strong) Realty1 *realty1;
@property (nonatomic, strong) Stock1 *stock1;
@property (nonatomic, strong) Stock2 *stock2;
@property (nonatomic, strong) Stock3 *stock3;

@end

@implementation Fund

- (instancetype)init {
    self = [super init];
    if (self) {
        self.stock1 = [[Stock1 alloc] init];
        self.stock2 = [[Stock2 alloc] init];
        self.stock3 = [[Stock3 alloc] init];
        self.realty1 = [[Realty1 alloc] init];
        self.nationalDebt1 = [[NationalDebt1 alloc] init];
    }
    return self;
}

- (void)buyFund {
    [self.stock1 buy];
    [self.stock2 buy];
    [self.stock3 buy];
    [self.realty1 buy];
    [self.nationalDebt1 buy];
}

- (void)sellFund {
    [self.stock1 sell];
    [self.stock2 sell];
    [self.stock3 sell];
    [self.realty1 sell];
    [self.nationalDebt1 sell];
}

@end
