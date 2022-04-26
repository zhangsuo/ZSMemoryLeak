//
//  ViewController.m
//  ZSMemoryLeak
//
//  Created by zenking on 2022/4/25.
//

#import "ViewController.h"
#import "TimeViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *but = [[UIButton alloc]initWithFrame:CGRectMake(150, 50, 50, 50)];
    [but setTitle:@"跳转" forState:UIControlStateNormal];
    but.backgroundColor = [UIColor redColor];
    [but addTarget:self action:@selector(cickButt) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:but];
}

-(void)cickButt{
    

    TimeViewController *timeVC = [[TimeViewController alloc]init];
    
  
    

     [self.navigationController pushViewController:timeVC animated:YES];
    
}

@end
