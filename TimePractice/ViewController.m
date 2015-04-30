//
//  ViewController.m
//  TimePractice
//
//  Created by Jason Lei on 2015/4/30.
//  Copyright (c) 2015年 AlphaCamp. All rights reserved.
//

#import "ViewController.h"
#import <UIKit/UIKit.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)showTime:(id)sender {
    
    NSDate *time = [NSDate date];
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc]init];
    [dateFormat setDateFormat:@"yyyy年M月d日 hh:mm"];
    NSString *date = [dateFormat stringFromDate:time];
    NSLog(@"日期：%@",date);
    
    NSCalendar *cal = [NSCalendar currentCalendar];
    NSDate *three = [cal dateByAddingUnit:NSCalendarUnitMinute value:200 toDate:time options:0];
    
    NSString *threeHrLater = [dateFormat stringFromDate:three];
    NSLog(@"日期：%@",threeHrLater);
    
}

@end
