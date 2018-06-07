//
//  UIView+MASAdditions.m
//  Masonry
//
//  Created by Jonas Budelmann on 20/07/13.
//  Copyright (c) 2013 cloudling. All rights reserved.
//

#import "View+ZXDMASAdditions.h"
#import <objc/runtime.h>

@implementation MAS_VIEW (ZXDMASAdditions)

- (NSArray *)mas_makeConstraints:(void(^)(ZXDMASConstraintMaker *))block {
    self.translatesAutoresizingMaskIntoConstraints = NO;
    ZXDMASConstraintMaker *constraintMaker = [[ZXDMASConstraintMaker alloc] initWithView:self];
    block(constraintMaker);
    return [constraintMaker install];
}

- (NSArray *)mas_updateConstraints:(void(^)(ZXDMASConstraintMaker *))block {
    self.translatesAutoresizingMaskIntoConstraints = NO;
    ZXDMASConstraintMaker *constraintMaker = [[ZXDMASConstraintMaker alloc] initWithView:self];
    constraintMaker.updateExisting = YES;
    block(constraintMaker);
    return [constraintMaker install];
}

- (NSArray *)mas_remakeConstraints:(void(^)(ZXDMASConstraintMaker *make))block {
    self.translatesAutoresizingMaskIntoConstraints = NO;
    ZXDMASConstraintMaker *constraintMaker = [[ZXDMASConstraintMaker alloc] initWithView:self];
    constraintMaker.removeExisting = YES;
    block(constraintMaker);
    return [constraintMaker install];
}

#pragma mark - NSLayoutAttribute properties

- (ZXDMASViewAttribute *)mas_left {
    return [[ZXDMASViewAttribute alloc] initWithView:self layoutAttribute:NSLayoutAttributeLeft];
}

- (ZXDMASViewAttribute *)mas_top {
    return [[ZXDMASViewAttribute alloc] initWithView:self layoutAttribute:NSLayoutAttributeTop];
}

- (ZXDMASViewAttribute *)mas_right {
    return [[ZXDMASViewAttribute alloc] initWithView:self layoutAttribute:NSLayoutAttributeRight];
}

- (ZXDMASViewAttribute *)mas_bottom {
    return [[ZXDMASViewAttribute alloc] initWithView:self layoutAttribute:NSLayoutAttributeBottom];
}

- (ZXDMASViewAttribute *)mas_leading {
    return [[ZXDMASViewAttribute alloc] initWithView:self layoutAttribute:NSLayoutAttributeLeading];
}

- (ZXDMASViewAttribute *)mas_trailing {
    return [[ZXDMASViewAttribute alloc] initWithView:self layoutAttribute:NSLayoutAttributeTrailing];
}

- (ZXDMASViewAttribute *)mas_width {
    return [[ZXDMASViewAttribute alloc] initWithView:self layoutAttribute:NSLayoutAttributeWidth];
}

- (ZXDMASViewAttribute *)mas_height {
    return [[ZXDMASViewAttribute alloc] initWithView:self layoutAttribute:NSLayoutAttributeHeight];
}

- (ZXDMASViewAttribute *)mas_centerX {
    return [[ZXDMASViewAttribute alloc] initWithView:self layoutAttribute:NSLayoutAttributeCenterX];
}

- (ZXDMASViewAttribute *)mas_centerY {
    return [[ZXDMASViewAttribute alloc] initWithView:self layoutAttribute:NSLayoutAttributeCenterY];
}

- (ZXDMASViewAttribute *)mas_baseline {
    return [[ZXDMASViewAttribute alloc] initWithView:self layoutAttribute:NSLayoutAttributeBaseline];
}

- (ZXDMASViewAttribute *(^)(NSLayoutAttribute))mas_attribute
{
    return ^(NSLayoutAttribute attr) {
        return [[ZXDMASViewAttribute alloc] initWithView:self layoutAttribute:attr];
    };
}

#if (__IPHONE_OS_VERSION_MIN_REQUIRED >= 80000) || (__TV_OS_VERSION_MIN_REQUIRED >= 9000) || (__MAC_OS_X_VERSION_MIN_REQUIRED >= 101100)

- (ZXDMASViewAttribute *)mas_firstBaseline {
    return [[ZXDMASViewAttribute alloc] initWithView:self layoutAttribute:NSLayoutAttributeFirstBaseline];
}
- (ZXDMASViewAttribute *)mas_lastBaseline {
    return [[ZXDMASViewAttribute alloc] initWithView:self layoutAttribute:NSLayoutAttributeLastBaseline];
}

#endif

#if (__IPHONE_OS_VERSION_MIN_REQUIRED >= 80000) || (__TV_OS_VERSION_MIN_REQUIRED >= 9000)

- (ZXDMASViewAttribute *)mas_leftMargin {
    return [[ZXDMASViewAttribute alloc] initWithView:self layoutAttribute:NSLayoutAttributeLeftMargin];
}

- (ZXDMASViewAttribute *)mas_rightMargin {
    return [[ZXDMASViewAttribute alloc] initWithView:self layoutAttribute:NSLayoutAttributeRightMargin];
}

- (ZXDMASViewAttribute *)mas_topMargin {
    return [[ZXDMASViewAttribute alloc] initWithView:self layoutAttribute:NSLayoutAttributeTopMargin];
}

- (ZXDMASViewAttribute *)mas_bottomMargin {
    return [[ZXDMASViewAttribute alloc] initWithView:self layoutAttribute:NSLayoutAttributeBottomMargin];
}

- (ZXDMASViewAttribute *)mas_leadingMargin {
    return [[ZXDMASViewAttribute alloc] initWithView:self layoutAttribute:NSLayoutAttributeLeadingMargin];
}

- (ZXDMASViewAttribute *)mas_trailingMargin {
    return [[ZXDMASViewAttribute alloc] initWithView:self layoutAttribute:NSLayoutAttributeTrailingMargin];
}

- (ZXDMASViewAttribute *)mas_centerXWithinMargins {
    return [[ZXDMASViewAttribute alloc] initWithView:self layoutAttribute:NSLayoutAttributeCenterXWithinMargins];
}

- (ZXDMASViewAttribute *)mas_centerYWithinMargins {
    return [[ZXDMASViewAttribute alloc] initWithView:self layoutAttribute:NSLayoutAttributeCenterYWithinMargins];
}

#endif

#if (__IPHONE_OS_VERSION_MAX_ALLOWED >= 110000) || (__TV_OS_VERSION_MAX_ALLOWED >= 110000)

- (ZXDMASViewAttribute *)mas_safeAreaLayoutGuide {
    return [[ZXDMASViewAttribute alloc] initWithView:self item:self.safeAreaLayoutGuide layoutAttribute:NSLayoutAttributeBottom];
}
- (ZXDMASViewAttribute *)mas_safeAreaLayoutGuideTop {
    return [[ZXDMASViewAttribute alloc] initWithView:self item:self.safeAreaLayoutGuide layoutAttribute:NSLayoutAttributeTop];
}
- (ZXDMASViewAttribute *)mas_safeAreaLayoutGuideBottom {
    return [[ZXDMASViewAttribute alloc] initWithView:self item:self.safeAreaLayoutGuide layoutAttribute:NSLayoutAttributeBottom];
}
- (ZXDMASViewAttribute *)mas_safeAreaLayoutGuideLeft {
    return [[ZXDMASViewAttribute alloc] initWithView:self item:self.safeAreaLayoutGuide layoutAttribute:NSLayoutAttributeLeft];
}
- (ZXDMASViewAttribute *)mas_safeAreaLayoutGuideRight {
    return [[ZXDMASViewAttribute alloc] initWithView:self item:self.safeAreaLayoutGuide layoutAttribute:NSLayoutAttributeRight];
}

#endif

#pragma mark - associated properties

- (id)mas_key {
    return objc_getAssociatedObject(self, @selector(mas_key));
}

- (void)setMas_key:(id)key {
    objc_setAssociatedObject(self, @selector(mas_key), key, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

#pragma mark - heirachy

- (instancetype)mas_closestCommonSuperview:(MAS_VIEW *)view {
    MAS_VIEW *closestCommonSuperview = nil;

    MAS_VIEW *secondViewSuperview = view;
    while (!closestCommonSuperview && secondViewSuperview) {
        MAS_VIEW *firstViewSuperview = self;
        while (!closestCommonSuperview && firstViewSuperview) {
            if (secondViewSuperview == firstViewSuperview) {
                closestCommonSuperview = secondViewSuperview;
            }
            firstViewSuperview = firstViewSuperview.superview;
        }
        secondViewSuperview = secondViewSuperview.superview;
    }
    return closestCommonSuperview;
}

@end
