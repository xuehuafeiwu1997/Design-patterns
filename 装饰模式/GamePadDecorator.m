//
//  GamePadDecoratr.m
//  大话设计模式
//
//  Created by 许明洋 on 2020/8/17.
//  Copyright © 2020 许明洋. All rights reserved.
//

#import "GamePadDecorator.h"

@interface GamePadDecorator()

@property (nonatomic, strong) GamePad *gamePad;

@end

@implementation GamePadDecorator

- (instancetype)init {
    self = [super init];
    if (self) {
        self.gamePad = [[GamePad alloc] init];
    }
    return self;
}

- (void)up {
    [self.gamePad up];
}

- (void)down {
    [self.gamePad down];
}

- (void)left {
    [self.gamePad left];
}

- (void)right {
    [self.gamePad right];
}

- (void)buttonA {
    [self.gamePad buttonA];
}

- (void)buttonB {
    [self.gamePad buttonB];
}
@end
