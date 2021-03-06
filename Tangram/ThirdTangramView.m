//
//  ThirdTangramView.m
//  Tangram
//
//  Created by 袁灿 on 16/3/7.
//  Copyright © 2016年 yuancan. All rights reserved.
//

#import "ThirdTangramView.h"

@implementation ThirdTangramView

- (void)drawRect:(CGRect)rect
{
    UIColor *color = COLOR(221, 194, 106, 1);
    self.backgroundColor = color;
    [color set]; //设置线条颜色
    
    float x1 = 1.0/3.0*SCREEN_WIDTH+10;
    float y1 = -3.0/14.0*kQtRate*x1+3.0/7.0*SCREEN_HEIGHT;
    
    float x2 = 1.0/3.0*SCREEN_WIDTH+20;
    float y2 = -3.0/14.0*kQtRate*x2+6.0/7.0*SCREEN_HEIGHT;
    
    self.path = [UIBezierPath bezierPath];
    [self.path moveToPoint:CGPointMake(0, 3.0/7.0*SCREEN_HEIGHT)];
    [self.path addLineToPoint:CGPointMake(0,6.0/7.0*SCREEN_HEIGHT)];
    [self.path addLineToPoint:CGPointMake(x2, y2)];
    [self.path addLineToPoint:CGPointMake(x1, y1)];
    [self.path closePath];
    [self.path fill];

    [self setMaskWithUIBezierPath:self.path];
    
    UILabel *title = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 55, 20)];
    title.center = CGPointMake(x1/2, y1+(y2-y1)/2);
    title.text = @"七巧板三";
    title.textColor = [UIColor whiteColor];
    title.font = [UIFont systemFontOfSize:10.0f];
    title.textAlignment = NSTextAlignmentCenter;
    [self addSubview:title];
    
    [UIView animateWithDuration:1.0
                     animations:^{
                         title.transform = CGAffineTransformRotate(CGAffineTransformScale(title.transform, 1.5, 1.5), -0.1*M_PI); //缩放+旋转
                     }];

}

@end
