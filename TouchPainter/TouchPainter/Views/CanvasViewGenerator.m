//
//  CanvasViewGenerator.m
//  TouchPainter
//
//  Created by Charles on 2017/11/12.
//  Copyright © 2017年 Charles. All rights reserved.
//

#import "CanvasViewGenerator.h"
#import "CanvasView.h"

@implementation CanvasViewGenerator

- (CanvasView *)canvasViewWithFrame:(CGRect)aFrame {
    return [[CanvasView alloc]initWithFrame:aFrame];
}

@end
