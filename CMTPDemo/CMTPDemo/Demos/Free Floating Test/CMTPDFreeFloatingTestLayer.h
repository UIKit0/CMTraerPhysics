//
//  CMTPDFreeFloatingTestLayer.h
//  CMTPDemo
//
//  Created by Chris Miles on 12/12/11.
//  Copyright (c) 2011 Chris Miles. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>

@interface CMTPDFreeFloatingTestLayer : CALayer

@property (nonatomic, retain) UILabel *fpsLabel;

- (void)startAnimation;
- (void)stopAnimation;

- (void)setUserPosition:(CGPoint)position;
- (void)clearPrevPosition;

- (NSUInteger)particleCount;

@end
