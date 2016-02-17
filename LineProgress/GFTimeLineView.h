//
//  TimeLineView.h
//  LineProgress
//
//  Created by apple on 16/1/31.
//  Copyright © 2016年 Gaooof. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TimeLineView : UIView

@property (nonatomic,assign) double lineProgress;
@property (nonatomic,weak) UIColor *lineProgressBackground;
@property (nonatomic,weak) UIColor *lineProgressColor;

- (instancetype)initWithFrame:(CGRect)frame;
-(void)timeLineAnimationWithdurationTime:(CGFloat)durationTime ;

@end
