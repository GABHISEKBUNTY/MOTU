//
//  UIView+UIView_Extended.m
//  MOTU
//
//  Created by Abhisek on 04/03/18.
//  Copyright © 2018 Abhisek. All rights reserved.
//

#import "UIView+UIView_Extended.h"

@implementation UIView (UIView_Extended)

-(CGFloat)frameX {
    return self.frame.origin.x;
}

-(CGFloat)frameY {
    return self.frame.origin.y;
}

-(CGFloat)boundedHeight {
    return self.bounds.size.height;
}

-(CGFloat)boundedWidth {
    return self.bounds.size.height;
}

-(CGFloat)frameHeight {
    return self.frame.size.height;
}

-(CGFloat)frameWidth {
    return self.frame.size.width;
}

@end
