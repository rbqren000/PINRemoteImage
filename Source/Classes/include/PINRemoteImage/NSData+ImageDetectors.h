//
//  NSData+ImageDetectors.h
//  Pods
//
//  Created by Garrett Moon on 11/19/14.
//
//

#import <Foundation/Foundation.h>

#import <PINRemoteImage/PINRemoteImageMacros.h>

@interface NSData (PINImageDetectors)

- (BOOL)pin_isGIF;
- (BOOL)pin_isAnimatedGIF;
#if PIN_WEBP
- (BOOL)pin_isWebP;
- (BOOL)pin_isAnimatedWebP;
#endif
#if PIN_APNG
- (BOOL)pin_isAPNG;
#endif

@end
