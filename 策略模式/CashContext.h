//
//  CashContext.h
//  大话设计模式
//
//  Created by 许明洋 on 2020/8/6.
//  Copyright © 2020 许明洋. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CashSuper.h"

NS_ASSUME_NONNULL_BEGIN

@interface CashContext : NSObject

@property (nonatomic, strong) CashSuper *cashSuper;
- (instancetype)initWithItemStr:(NSString *)itemStr;
- (double)getResult;
@end

NS_ASSUME_NONNULL_END
