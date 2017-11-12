//
//  Vertex.h
//  TouchPainter
//
//  Created by Charles on 2017/11/12.
//  Copyright © 2017年 Charles. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "Mark.h"

@interface Vertex : NSObject <Mark,NSCopying> {
    @protected
    CGPoint _location;
}

@property (nonatomic,strong) UIColor *color;
@property (nonatomic,assign) CGFloat size;
@property (nonatomic,assign) CGPoint location;
@property (nonatomic,readonly) NSUInteger count;
@property (nonatomic,readonly) id <Mark> lastChild;

- (id)initWithLocation:(CGPoint) location;
- (void)addMark:(id<Mark>)mark;
- (void)removeMark:(id<Mark>)mark;
- (id<Mark>)childMarkAtIndex:(NSUInteger)index;
- (id)copyWithZone:(NSZone *)zone;

@end
