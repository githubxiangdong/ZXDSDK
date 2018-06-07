//
//  UIViewController+MASAdditions.h
//  Masonry
//
//  Created by Craig Siemens on 2015-06-23.
//
//

#import "ZXDMASUtilities.h"
#import "ZXDMASConstraintMaker.h"
#import "ZXDMASViewAttribute.h"

#ifdef MAS_VIEW_CONTROLLER

@interface MAS_VIEW_CONTROLLER (ZXDMASAdditions)

/**
 *	following properties return a new MASViewAttribute with appropriate UILayoutGuide and NSLayoutAttribute
 */
@property (nonatomic, strong, readonly) ZXDMASViewAttribute *mas_topLayoutGuide;
@property (nonatomic, strong, readonly) ZXDMASViewAttribute *mas_bottomLayoutGuide;
@property (nonatomic, strong, readonly) ZXDMASViewAttribute *mas_topLayoutGuideTop;
@property (nonatomic, strong, readonly) ZXDMASViewAttribute *mas_topLayoutGuideBottom;
@property (nonatomic, strong, readonly) ZXDMASViewAttribute *mas_bottomLayoutGuideTop;
@property (nonatomic, strong, readonly) ZXDMASViewAttribute *mas_bottomLayoutGuideBottom;


@end

#endif
