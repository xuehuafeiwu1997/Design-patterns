//
//  Translator.m
//  大话设计模式
//
//  Created by 许明洋 on 2020/8/21.
//  Copyright © 2020 许明洋. All rights reserved.
//

#import "Translator.h"

@implementation Translator

- (void)attack {
    [self.center foreignAttack];
}

- (void)defense {
    [self.center foreignDefense];
}

- (instancetype)initWithName:(NSString *)name {
    self = [super init];
    if (self) {
        self.center = [[ForeignCenter alloc] initWithName:name];
    }
    return self;
}

@end
