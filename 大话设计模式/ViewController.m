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

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
//    [self simpleFactoryTest];
//    [self strategyTest];
    [self decoratorTest];
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
@end
