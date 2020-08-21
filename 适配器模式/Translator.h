//
//  Translator.h
//  大话设计模式
//
//  Created by 许明洋 on 2020/8/21.
//  Copyright © 2020 许明洋. All rights reserved.
//

#import "Player.h"
#import "ForeignCenter.h"

NS_ASSUME_NONNULL_BEGIN

@interface Translator : Player

@property (nonatomic, strong) ForeignCenter *center;

@end

NS_ASSUME_NONNULL_END
