//
//  Vertex.m
//  TouchPainter
//
//  Created by Charles on 2017/11/12.
//  Copyright © 2017年 Charles. All rights reserved.
//

#import "Vertex.h"

@implementation Vertex
@synthesize location;
@dynamic color,size;

- (id)initWithLocation:(CGPoint)location {
    if (self = [super init]) {
        self.location = location;
    }
    return self;
}

- (void)setColor:(UIColor *)color {
    
}

- (UIColor *)color {
    return nil;
}

- (void)setSize:(CGFloat)size {
    
}

- (CGFloat)size {
    return 0.0;
}

- (void)addMark:(id<Mark>)mark {
    
}

- (void)removeMark:(id<Mark>)mark {
    
}

- (id<Mark>)childMarkAtIndex:(NSUInteger)index {
    return nil;
}

- (id<Mark>)lastChild {
    return nil;
}

- (NSUInteger)count {
    return 0;
}

- (NSEnumerator *)enumerator {
    return nil;
}

#pragma mark - NSCopying method

- (id)copyWithZone:(NSZone *)zone {
    Vertex *vertexCopy = [[[self class]allocWithZone:zone]initWithLocation:_location];
    return vertexCopy;
}



@end
