//
//  Dot.h
//  TouchPainter
//
//  Created by Charles on 2017/11/12.
//  Copyright © 2017年 Charles. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Vertex.h"
@interface Dot : Vertex {
    @private
    UIColor *_color;
    CGFloat _size;
}

@property (nonatomic,strong) UIColor *color;
@property (nonatomic,assign) CGFloat size;

@end
