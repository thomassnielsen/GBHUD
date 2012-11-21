//
//  GBHUDBackgroundView.m
//  GBHUD
//
//  Created by Luka Mirosevic on 21/11/2012.
//  Copyright (c) 2012 Goonbee. All rights reserved.
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.

#import "GBHUDBackgroundView.h"

@implementation GBHUDBackgroundView {
    CGFloat _cornerRadius;
}

#pragma mark - acc

-(void)setColor:(UIColor *)color {
    _color = color;
    
    [self setNeedsDisplay];
}

-(void)setCornerRadius:(CGFloat)cornerRadius {
    _cornerRadius = cornerRadius;
    
    [self setNeedsDisplay];
}

#pragma mark - mem

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
        self.cornerRadius = 0;
    }
    return self;
}

-(void)dealloc {
    self.color = nil;
}

#pragma mark - drawing

- (void)drawRect:(CGRect)rect {
    [self.color setStroke];
    [self.color setFill];
    
    UIBezierPath *rectPath = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(0, 0, self.bounds.size.width, self.bounds.size.height) cornerRadius:self.cornerRadius];
    [rectPath fill];
}

@end
