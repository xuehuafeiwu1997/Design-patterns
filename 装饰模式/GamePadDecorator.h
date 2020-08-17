//
//  GamePadDecoratr.h
//  大话设计模式
//
//  Created by 许明洋 on 2020/8/17.
//  Copyright © 2020 许明洋. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GamePad.h"

NS_ASSUME_NONNULL_BEGIN

@interface GamePadDecorator : NSObject

- (void)up;
- (void)down;
- (void)left;
- (void)right;
- (void)buttonA;
- (void)buttonB;

@end

NS_ASSUME_NONNULL_END
