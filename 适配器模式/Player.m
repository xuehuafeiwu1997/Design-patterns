//
//  Player.m
//  大话设计模式
//
//  Created by 许明洋 on 2020/8/21.
//  Copyright © 2020 许明洋. All rights reserved.
//

#import "Player.h"

@implementation Player

- (void)attack {
    NSLog(@"%@ attack !",self.name);
}

- (void)defense {
    NSLog(@"%@ defense !",self.name);
}

- (instancetype)initWithName:(NSString *)name {
    self = [super init];
    if (self) {
        self.name = name;
    }
    return self;
}

@end
