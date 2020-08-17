//
//  Student.h
//  大话设计模式
//
//  Created by 许明洋 on 2020/8/17.
//  Copyright © 2020 许明洋. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StudentProtocal.h"

NS_ASSUME_NONNULL_BEGIN

@interface Student : NSObject

- (void)findHouse;//找房子的方法

@property (nonatomic, weak) id<StudentProtocal> delegate;

@end

NS_ASSUME_NONNULL_END
