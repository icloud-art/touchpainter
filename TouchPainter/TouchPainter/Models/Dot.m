//
//  Dot.m
//  TouchPainter
//
//  Created by Charles on 2017/11/12.
//  Copyright © 2017年 Charles. All rights reserved.
//

#import "Dot.h"

@implementation Dot
@synthesize color = _color,size = _size;

- (id)copyWithZone:(NSZone *)zone {
    Dot *dotCopy = [[[self class] allocWithZone:zone]initWithLocation:_location];
    [dotCopy setColor:[UIColor colorWithCGColor:self.color.CGColor]];
    [dotCopy setSize:self.size];
    return dotCopy;
}

@end
