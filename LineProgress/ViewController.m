//
//  ViewController.m
//  LineProgress
//
//  Created by apple on 16/1/31.
//  Copyright © 2016年 Gaooof. All rights reserved.
//

#import "ViewController.h"
#import "GFTimeLineView.h"
#define TLViewHSize (self.view.frame.size.height)
@interface ViewController ()
@property (nonatomic,weak)TimeLineView *LineProgress;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //create LineProgress
    CGFloat TLViewW=6;
    CGFloat TLViewH=self.view.frame.size.height*0.7;
    CGFloat TLViewX=(self.view.frame.size.width-TLViewW)*0.5;
    CGFloat TLViewY=self.view.frame.size.height*0.1;
    TimeLineView *lineView=[[TimeLineView alloc] initWithFrame:CGRectMake(TLViewX, TLViewY, TLViewW, TLViewH)];
    
    //backgroundColor
    lineView.backgroundColor=[UIColor blueColor];
    
    _LineProgress=lineView;

    
    [self.view addSubview:lineView];
    
    //set progress 0.0~1.0
    _LineProgress.lineProgress=1;
    _LineProgress.lineProgressColor=[UIColor redColor];
}




-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    //Animation duration time 
    [_LineProgress timeLineAnimationWithdurationTime:4];
}

@end
