//
//  Work.m
//  大话设计模式
//
//  Created by 许明洋 on 2020/8/21.
//  Copyright © 2020 许明洋. All rights reserved.
//

#import "Work.h"
#import "ForenoonState.h"

@implementation Work

- (instancetype)init {
    self = [super init];
    if (self) {
        self.state = [[ForenoonState alloc] init];
    }
    return self;
}

- (void)writeProgram {
    [self.state writeProgram:self];
}

@end
