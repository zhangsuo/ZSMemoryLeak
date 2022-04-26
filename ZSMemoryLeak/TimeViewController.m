//
//  TimeViewController.m
//  ZSMemoryLeak
//
//  Created by zenking on 2022/4/25.
//

#import "TimeViewController.h"

@interface TimeViewController ()
@property(nonatomic,strong)NSTimer *timer;


@property (nonatomic, copy) dispatch_block_t testBlock;
@property (nonatomic, copy) NSString *testString;


@end

@implementation TimeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];

    [self addTimer];
    
    [self test];
}


- (void)addTimer {
    _timer = [NSTimer timerWithTimeInterval:1.0 target:self selector:@selector(updateTimer) userInfo:nil repeats:YES];
    [[NSRunLoop mainRunLoop] addTimer:_timer forMode:NSRunLoopCommonModes];
}

//循环引用
- (void)test {
    self.testBlock = ^() {
        NSLog(@"%@", self.testString);
    };
}

- (void)updateTimer {
    NSLog(@"%s",__func__);
}

-(void)dealloc{
    NSLog(@"TimeViewController消失");
}

@end
