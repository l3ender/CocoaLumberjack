//
//  RegisteredLoggingTestAppDelegate.m
//  RegisteredLoggingTest
//
//  CocoaLumberjack Demos
//

#import "RegisteredLoggingTestAppDelegate.h"
#import "RegisteredLoggingTestViewController.h"
#import "CustomLogger.h"

@implementation RegisteredLoggingTestAppDelegate

@synthesize window = _window;
@synthesize viewController = _viewController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [DDLog addLogger:[CustomLogger alloc] withLevel:DDLogLevelError];

    self.window.rootViewController = self.viewController;
    [self.window makeKeyAndVisible];
    return YES;
}

@end
