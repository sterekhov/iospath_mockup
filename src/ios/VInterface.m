//
//  ViewerInterface.m
//  Cordova plugin mockup
//
//  Created by Sergey Terekhov on 1/24/18.
//

#import "VInterface.h"

@implementation VInterface

- (void)getUrlFilename:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
    
    NSString *sUrl = [command.arguments objectAtIndex:0];
    NSString *fileName = [NSString stringWithFormat:@"file-name-with-url:%@", sUrl];
    NSLog(@"getUrlFilename in = %@", fileName);
    if (fileName != nil && [fileName length] > 0) {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:fileName];
    } else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }
    
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)getCacheUrl:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult *pluginResult = nil;
    
    NSString *sUrl = [command.arguments objectAtIndex:0];
    NSString *subPath = [command.arguments objectAtIndex:1];
    NSLog(@"getCacheUrl in: %@, %@", sUrl, subPath);
    
    NSString *cacheUrl = [NSString stringWithFormat:@"cache-url-with-subpath:%@-%@", sUrl, subPath];
    
    if (cacheUrl != nil && [cacheUrl length] > 0) {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:cacheUrl];
    } else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }
    
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];;
}

@end
