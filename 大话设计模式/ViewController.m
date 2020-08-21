//
//  ViewController.m
//  大话设计模式
//
//  Created by 许明洋 on 2020/8/6.
//  Copyright © 2020 许明洋. All rights reserved.
//

#import "ViewController.h"
#import "OperationFactory.h"
#import "CashContext.h"
#import "CheatGamePadDecorator.h"
#import "Student.h"
#import "Intermediary.h"
#import "UndergraduateFactory.h"
#import "VolunteerFactory.h"
#import "ResumeShallowCopy.h"
#import "ResumeDeepCopy.h"
#import "TestPaper.h"
#import "TestPaperA.h"
#import "TestPaperB.h"
#import "Fund.h"
#import "PersonThinBuilder.h"
#import "PersonFatBuilder.h"
#import "PersonDirector.h"
#import "SQLServerFactory.h"
#import "AccessFactory.h"
#import "Work.h"
#import "Translator.h"
#import "Forwards.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
//    [self simpleFactoryTest];//简单工厂模式
//    [self strategyTest];//策略模式
//    [self decoratorTest];//装饰模式
//    [self proxyTest];//代理模式
//    [self factoryTest];//工厂模式测试
//    [self protoTypeTest];//原型模式测试
//    [self templateMethodTest];//模版方法模式
//    [self facadeTest];//外观模式
//    [self builderTest];//建造者模式
//    [self abstractFactoryTest];//抽象工厂模式
//    [self stateTest];//状态模式
    [self adapterTest];//适配器模式测试
}

//简单工厂测试
- (void)simpleFactoryTest {
    Operation *operation = [OperationFactory createOperation:OperationTypeAdd];
    operation.numberA = 600;
    operation.numberB = 100;
    NSLog(@"加法运算的结果为:%f",[operation getResult]);
    
    operation = [OperationFactory createOperation:OperationTypeSub];
    operation.numberA = 600;
    operation.numberB = 100;
    NSLog(@"减法运算的结果为:%f",[operation getResult]);
    
    operation = [OperationFactory createOperation:OperationTypeMul];
    operation.numberA = 600;
    operation.numberB = 100;
    NSLog(@"乘法运算的结果为:%f",[operation getResult]);
    
    operation = [OperationFactory createOperation:OperationTypeDiv];
    operation.numberA = 600;
    operation.numberB = 100;
    NSLog(@"除法运算的结果为:%f",[operation getResult]);
}

//策略模式测试
- (void)strategyTest {
    CashContext *context = [[CashContext alloc] initWithItemStr:@"满300返100"];
    context.cashSuper.signalPrice = 120;
    context.cashSuper.number = 5;
    
    NSLog(@"折扣后的总价格为%f",[context getResult]);
}

//装饰模式测试
- (void)decoratorTest {
    //创建cheatGamePad实例
    CheatGamePadDecorator *cheatGamePad = [[CheatGamePadDecorator alloc] init];
    
    //实现GamePad的功能
    [cheatGamePad up];
    [cheatGamePad down];
    
    //实现作弊的方法
    [cheatGamePad cheat];
}

//代理模式
- (void)proxyTest {
    Student *student = [[Student alloc] init];
    Intermediary *interMidary = [[Intermediary alloc] init];
    student.delegate = interMidary;
    [student findHouse];
}

//工厂模式
- (void)factoryTest {
    id<LeiFengFactory> leiFengFactory = [[UndergraduateFactory alloc] init];
    
    id<LeiFeng> student = [leiFengFactory createLeiFeng];
    [student sweep];
    [student wash];
    [student buyRice];
    
    leiFengFactory = [[VolunteerFactory alloc] init];
    id<LeiFeng> volunteer = [leiFengFactory createLeiFeng];
    [volunteer sweep];
    [volunteer wash];
    [volunteer buyRice];
    
}

//原型模式测试
- (void)protoTypeTest {
    Resume *resume1 = [[ResumeDeepCopy alloc] initWithName:@"大鸟"];
    [resume1 setPersonalInfoWithSex:@"男" age:@"29"];
    [resume1 setWorkExperienceWithWorkDate:@"1998-2000" company:@"XX 公司"];
    NSLog(@"Retain count is %ld", CFGetRetainCount((__bridge CFTypeRef)resume1));
    
    Resume *resume2 = [resume1 copy];
    [resume2 setWorkExperienceWithWorkDate:@"1998-2006" company:@"YY 企业"];
    NSLog(@"Retain count is %ld", CFGetRetainCount((__bridge CFTypeRef)resume2));
    
    Resume *resume3 = [resume1 copy];
      [resume3 setPersonalInfoWithSex:@"男" age:@"24"];
      [resume3 setWorkExperienceWithWorkDate:@"1998-2003" company:@"ZZ 企业"];
      NSLog(@"Retain count is %ld", CFGetRetainCount((__bridge CFTypeRef)resume3));
    
    [resume1 display];
    [resume2 display];
    [resume3 display];
}

//模版模式测试
- (void)templateMethodTest {
    NSLog(@"学生甲抄的试卷:");
    TestPaper *studentA = [[TestPaperA alloc] init];
    [studentA testQuestion1];
    [studentA testQuestion2];
    [studentA testQuestion3];
    
    NSLog(@"学生乙抄的试卷:");
    TestPaper *studentB = [[TestPaperB alloc] init];
    [studentB testQuestion1];
    [studentB testQuestion2];
    [studentB testQuestion3];
}

//外观模式测试
- (void)facadeTest {
    Fund *fund = [[Fund alloc] init];
    [fund buyFund];
    [fund sellFund];
}

//建造者模式测试
- (void)builderTest {
    id<PersonBuilder> personBuilder = [[PersonThinBuilder alloc] init];
    PersonDirector *personDirector = [[PersonDirector alloc] initWithPersonBuilder:personBuilder];
    [personDirector builderSon];
    
    personBuilder = [[PersonFatBuilder alloc] init];
    personDirector = [[PersonDirector alloc] initWithPersonBuilder:personBuilder];
    [personDirector builderSon];
}

//抽象工厂测试
- (void)abstractFactoryTest {
    User *user = [[User alloc] init];
    Department *department = [[Department alloc] init];
    
//    id<IFactory> factory = [[SQLServerFactory alloc] init];
    id<IFactory> factory = [[AccessFactory alloc] init];
    
    id<IUser> iUser = [factory createUser];
    [iUser insert:user];
    [iUser getUser:@"1"];
    
    id<IDepartment> iDepartment = [factory createDepartment];
    [iDepartment insert:department];
    [iDepartment getDepartment:@"1"];
}

//状态模式测试
- (void)stateTest {
    Work *work = [[Work alloc] init];
    
    work.hour = 9;
    [work writeProgram];
    
    work.hour = 10;
    [work writeProgram];
    
    work.hour = 12;
    [work writeProgram];
    
    work.hour = 13;
    [work writeProgram];
    
    work.hour = 14;
    [work writeProgram];
    
    work.hour = 17;
    work.finished = NO;
    [work writeProgram];
    
    work.hour = 19;
    [work writeProgram];
    
    work.hour = 21;
    [work writeProgram];
}

//适配器模式测试
- (void)adapterTest {
    Player *b = [[Forwards alloc] initWithName:@"Game"];
    [b attack];
    
    Translator *t = [[Translator alloc] initWithName:@"Risker"];
    [t attack];
    [t defense];
}

@end
