//
//  WorkExperience.h
//  大话设计模式
//
//  Created by 许明洋 on 2020/8/19.
//  Copyright © 2020 许明洋. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface WorkExperience : NSObject<NSCopying>

/// 时间区间
@property (nonatomic, strong) NSString *workDate;

///公司
@property (nonatomic, strong) NSString *company;

@end

NS_ASSUME_NONNULL_END
