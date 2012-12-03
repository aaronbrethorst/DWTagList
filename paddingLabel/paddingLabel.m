//
//  paddingLabel.m
//  DWTagList
//
//  Created by Deepak K on 03/12/12.
//  Copyright (c) 2012 Terracoding LTD. All rights reserved.
//

#import "paddingLabel.h"

@implementation paddingLabel

- (void)drawTextInRect:(CGRect)rect {
    UIEdgeInsets insets = {0, 5, 0, 5};
    return [super drawTextInRect:UIEdgeInsetsInsetRect(rect, insets)];
}

@end
