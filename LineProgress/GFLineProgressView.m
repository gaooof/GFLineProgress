//
//  TimeLineView.m
//  LineProgress
//
//  Created by apple on 16/1/31.
//  Copyright © 2016年 Gaooof. All rights reserved.
//

#import "GFLineProgressView.h"

@interface GFLineProgressView ()
@property (nonatomic,strong)UIView *lineProgressView;
@end

@implementation GFLineProgressView

-(void)setLineProgress:(double)lineProgress{
    if (lineProgress<0 || lineProgress>1) {
        return;
    }
    _lineProgress=lineProgress;
    [self createLineProgress];
}
- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        CGFloat TLViewW=self.frame.size.width;
        CGFloat TLViewH=self.frame.size.height;
        CGFloat TLViewX=0;
        CGFloat TLViewY=0;
        _lineProgressView=[[UIView alloc] initWithFrame:CGRectMake(TLViewX, TLViewY, TLViewW, TLViewH)];
        _lineProgressView.backgroundColor=self.lineProgressBackground;
        [self addSubview:_lineProgressView];
    }
    return self;
}



-(void)createLineProgress{
    //进度条
    CALayer *layer=[CALayer layer];
    
    //进度条初始化大小
    layer.bounds=CGRectMake(0, 0, _lineProgressView.bounds.size.width, 0);
    
    layer.position=CGPointMake(0, _lineProgressView.frame.size.height);
    layer.anchorPoint=CGPointMake(0, 1);
    layer.backgroundColor=[UIColor whiteColor].CGColor;
    [self.layer addSublayer:layer];
    
    CAAnimationGroup *group=[CAAnimationGroup animation];
    
    
    CABasicAnimation *changeHeight=[CABasicAnimation animationWithKeyPath:@"bounds.size"];
    // 设置改变的值 初始值
    changeHeight.fromValue = [NSValue valueWithCGSize:CGSizeMake(6, 0)];
    // 结束值
    changeHeight.toValue = [NSValue valueWithCGSize:CGSizeMake(6, self.bounds.size.height*self.lineProgress)];
    
    CABasicAnimation *changeColor=[CABasicAnimation animation];
    changeColor.keyPath=@"backgroundColor";
    changeColor.toValue=(id)self.lineProgressColor.CGColor;
    
    
    group.animations=@[changeHeight,changeColor];
    group.duration=_lineProgressdurationTime;
    group.removedOnCompletion=NO;
    group.fillMode=kCAFillModeForwards;
    [layer addAnimation:group forKey:nil];
    
}



@end
