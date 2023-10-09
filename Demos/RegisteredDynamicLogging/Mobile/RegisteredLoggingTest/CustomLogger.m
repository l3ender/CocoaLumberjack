#import "CustomLogger.h"

static DDLogLevel currentLevel = DDLogLevelWarning;

@implementation CustomLogger

+ (DDLogLevel)ddLogLevel {
    return currentLevel;
}

+ (void)ddSetLogLevel:(DDLogLevel)logLevel {
    currentLevel = logLevel;
}

- (void)logMessage:(DDLogMessage *)logMessage {
    NSLog(@"CustomLogger: %@", logMessage.message);
}

@end
