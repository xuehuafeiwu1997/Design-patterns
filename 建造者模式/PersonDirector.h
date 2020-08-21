//
//  PersonDirector.h
//  大话设计模式
//
//  Created by 许明洋 on 2020/8/21.
//  Copyright © 2020 许明洋. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PersonBuilder.h"

NS_ASSUME_NONNULL_BEGIN

@interface PersonDirector : NSObject

///实例化方法
///
///@param personBuilder 建造者
///
///@return 指挥者
- (instancetype)initWithPersonBuilder:(id<PersonBuilder>)personBuilder;

///建造小人
- (void)builderSon;

@end

NS_ASSUME_NONNULL_END
