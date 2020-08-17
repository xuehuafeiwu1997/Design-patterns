//
//  UndergraduateFactory.m
//  大话设计模式
//
//  Created by 许明洋 on 2020/8/17.
//  Copyright © 2020 许明洋. All rights reserved.
//

#import "UndergraduateFactory.h"
#import "Undergraduate.h"

@implementation UndergraduateFactory

- (id<LeiFeng>)createLeiFeng {
    return [[Undergraduate alloc] init];
}

@end
