//
//  UIViewController+MASAdditions.m
//  Masonry
//
//  Created by Craig Siemens on 2015-06-23.
//
//

#import "ViewController+ZXDMASAdditions.h"

#ifdef MAS_VIEW_CONTROLLER

@implementation MAS_VIEW_CONTROLLER (ZXDMASAdditions)

- (ZXDMASViewAttribute *)mas_topLayoutGuide {
    return [[ZXDMASViewAttribute alloc] initWithView:self.view item:self.topLayoutGuide layoutAttribute:NSLayoutAttributeBottom];
}
- (ZXDMASViewAttribute *)mas_topLayoutGuideTop {
    return [[ZXDMASViewAttribute alloc] initWithView:self.view item:self.topLayoutGuide layoutAttribute:NSLayoutAttributeTop];
}
- (ZXDMASViewAttribute *)mas_topLayoutGuideBottom {
    return [[ZXDMASViewAttribute alloc] initWithView:self.view item:self.topLayoutGuide layoutAttribute:NSLayoutAttributeBottom];
}

- (ZXDMASViewAttribute *)mas_bottomLayoutGuide {
    return [[ZXDMASViewAttribute alloc] initWithView:self.view item:self.bottomLayoutGuide layoutAttribute:NSLayoutAttributeTop];
}
- (ZXDMASViewAttribute *)mas_bottomLayoutGuideTop {
    return [[ZXDMASViewAttribute alloc] initWithView:self.view item:self.bottomLayoutGuide layoutAttribute:NSLayoutAttributeTop];
}
- (ZXDMASViewAttribute *)mas_bottomLayoutGuideBottom {
    return [[ZXDMASViewAttribute alloc] initWithView:self.view item:self.bottomLayoutGuide layoutAttribute:NSLayoutAttributeBottom];
}



@end

#endif
