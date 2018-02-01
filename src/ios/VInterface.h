//
//  ViewerInterface.h
//  Cordova plugin mockup
//
//  Created by Sergey Terekhov on 1/24/18.
//

#import <Cordova/CDV.h>

@interface VInterface : CDVPlugin

- (void)getUrlFilename:(CDVInvokedUrlCommand*)command;
- (void)getCacheUrl:(CDVInvokedUrlCommand*)command;

@end
