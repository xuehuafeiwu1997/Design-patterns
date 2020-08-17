//
//  StudentProtocal.h
//  大话设计模式
//
//  Created by 许明洋 on 2020/8/17.
//  Copyright © 2020 许明洋. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol StudentProtocal <NSObject>

/*
 协议要做的事，帮学生找房子
 */
- (void)studentFindHouse;

@end

NS_ASSUME_NONNULL_END
