//
//  ViewController.m
//  LineProgress
//
//  Created by apple on 16/1/31.
//  Copyright © 2016年 Gaooof. All rights reserved.
//

#import "ViewController.h"
#import "GFLineProgressView.h"
#define TLViewHSize (self.view.frame.size.height)
@interface ViewController ()
@property (nonatomic,weak)GFLineProgressView *LineProgress;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //create LineProgress
    CGFloat TLViewW=6;
    CGFloat TLViewH=self.view.frame.size.height*0.7;
    CGFloat TLViewX=(self.view.frame.size.width-TLViewW)*0.5;
    CGFloat TLViewY=self.view.frame.size.height*0.1;
    GFLineProgressView *lineView=[[GFLineProgressView alloc] initWithFrame:CGRectMake(TLViewX, TLViewY, TLViewW, TLViewH)];
    
    //backgroundColor
    lineView.backgroundColor=[UIColor blueColor];
    
    self.LineProgress=lineView;

    
    [self.view addSubview:lineView];
    
    self.LineProgress.lineProgressdurationTime=2;
    self.LineProgress.lineProgressColor=[UIColor redColor];
}




-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    //Animation duration time 
    //set progress 0.0~1.0
    self.LineProgress.lineProgress=1;
}

@end
