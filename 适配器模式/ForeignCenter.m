//
//  ForeignCenter.m
//  大话设计模式
//
//  Created by 许明洋 on 2020/8/21.
//  Copyright © 2020 许明洋. All rights reserved.
//

#import "ForeignCenter.h"

@implementation ForeignCenter

- (void)foreignAttack {
    NSLog(@"%@ foreignAttack !",self.name);
}

- (void)foreignDefense {
    NSLog(@"%@ foreignDefense !",self.name);
}

- (instancetype)initWithName:(NSString *)name {
    self = [super init];
    if (self) {
        self.name = name;
    }
    return self;
}
@end
