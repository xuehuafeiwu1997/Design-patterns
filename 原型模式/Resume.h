//
//  Resume.h
//  大话设计模式
//
//  Created by 许明洋 on 2020/8/19.
//  Copyright © 2020 许明洋. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WorkExperience.h"

NS_ASSUME_NONNULL_BEGIN


///简历抽象类，有两个具体的子类
///ResumeShallowCopy 子类实现浅拷贝
///ResumeDeepCopy 子类实现深拷贝
@interface Resume : NSObject<NSCopying>

///姓名
@property (nonatomic, strong) NSString *name;

///性别
@property (nonatomic, strong) NSString *sex;

///年龄
@property (nonatomic, strong) NSString *age;

///工作经历
@property (nonatomic, strong) WorkExperience *workExperience;

- (instancetype)initWithName:(NSString *)name;
- (void)setPersonalInfoWithSex:(NSString *)sex age:(NSString *)age;
- (void)setWorkExperienceWithWorkDate:(NSString *)workDate company:(NSString *)company;
- (void)display;
@end

NS_ASSUME_NONNULL_END
