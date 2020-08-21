//
//  ForeignCenter.h
//  大话设计模式
//
//  Created by 许明洋 on 2020/8/21.
//  Copyright © 2020 许明洋. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ForeignCenter : NSObject

@property (nonatomic, copy) NSString *name;

- (void)foreignAttack;
- (void)foreignDefense;
- (instancetype)initWithName:(NSString *)name;

@end

NS_ASSUME_NONNULL_END
