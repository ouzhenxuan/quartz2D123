//
//  wenZi.m
//  画文字和图片
//
//  Created by 区振轩 on 15-3-29.
//  Copyright (c) 2015年 区振轩. All rights reserved.
//

#import "wenZi.h"

@implementation wenZi

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code

    
//    drawImage();
    drawText();
}

/**
 *  画图片
 *
 *  @return <#return value description#>
 */
void drawImage(){

    UIImage * image = [UIImage imageNamed:@"me"];
    
    [image drawAsPatternInRect:CGRectMake(0,0,200,200)];
    
    NSString * str = @"wo hua d ";
    [str drawInRect:CGRectMake(0, 180, 100, 50) withAttributes:nil];

}


/**
 *  画文字
 */
void drawText(){
    
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGRect cubeRect = CGRectMake(50, 50, 100, 100);
    
    CGContextAddRect(ctx,cubeRect );
    CGContextFillPath(ctx);
    
    
    NSString * hehe  =  @"wo jiu hehe";
    //    [str drawAtPoint:CGPointZero withAttributes:nil];
    NSMutableDictionary * dic =  [NSMutableDictionary dictionary];
    // NSForegroundColorAttributeName : 文字颜色
    // NSFontAttributeName : 字体
    dic[NSFontAttributeName] = [UIFont systemFontOfSize:15];
    dic[NSForegroundColorAttributeName] = [UIColor redColor];
    
    [hehe drawInRect:cubeRect withAttributes:dic];
    
    

}




@end
