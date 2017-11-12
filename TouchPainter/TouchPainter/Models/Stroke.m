//
//  Stroke.m
//  TouchPainter
//
//  Created by Charles on 2017/11/12.
//  Copyright © 2017年 Charles. All rights reserved.
//

#import "Stroke.h"

@implementation Stroke

@synthesize color = _color,size = _size;
@dynamic location;

- (id)init {
    if (self = [super init]) {
        _children = [[NSMutableArray alloc]initWithCapacity:0];
    }
    return self;
}

- (void)setLocation:(CGPoint)location {
    
}

- (CGPoint)location {
    if (_children.count) {
        return [(id<Mark>)[_children objectAtIndex:0] location];
    }
    return CGPointZero;
}

- (void)addMark:(id<Mark>)mark {
    if (mark) {
        [_children addObject:mark];
    }
}

- (void)removeMark:(id<Mark>)mark {
    //如果mark在这一层，将其移除并返回
    //否则，让每个子节点去找它
    if ([_children containsObject:mark]) {
        [_children removeObject:mark];
    }else {
        [_children makeObjectsPerformSelector:@selector(removeMark:) withObject:mark];
    }
}

- (id<Mark>)childMarkAtIndex:(NSUInteger)index {
    if (index >= [_children count]) {
        return nil;
    }
    return [_children objectAtIndex:index];
}

- (id<Mark>)lastChild {
    if (_children.count) {
        return [_children lastObject];
    }
    return nil;
}

- (NSUInteger)count {
    return [_children count];
}

#pragma mark -
#pragma mark NSCopying method

- (id)copyWithZone:(NSZone *)zone {
    Stroke *strokeCopy = [[[self class]allocWithZone:zone]init];
    [strokeCopy setColor:[UIColor colorWithCGColor:_color.CGColor]];
    [strokeCopy setSize:_size];
    for (id<Mark> child in _children) {
        id<Mark> childCopy = [child copy];
        [strokeCopy addMark:childCopy];
    }
    return strokeCopy;
}

@end
