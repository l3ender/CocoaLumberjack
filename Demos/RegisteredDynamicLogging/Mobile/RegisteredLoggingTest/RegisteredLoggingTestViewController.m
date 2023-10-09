//
//  RegisteredLoggingTestViewController.m
//  RegisteredLoggingTest
//
//  CocoaLumberjack Demos
//

#import "RegisteredLoggingTestViewController.h"
#import <CocoaLumberjack/CocoaLumberjack.h>

@implementation RegisteredLoggingTestViewController

- (IBAction)debug:(UIButton *)sender
{
    NSString *message = [NSString stringWithFormat:@"Debug: %@", self.logMessageLabel.text];
    [self handleLog:message withLevel:DDLogLevelDebug withFlag:DDLogFlagDebug];
}

- (IBAction)info:(UIButton *)sender
{
    NSString *message = [NSString stringWithFormat:@"Info: %@", self.logMessageLabel.text];
    [self handleLog:message withLevel:DDLogLevelInfo withFlag:DDLogFlagInfo];
}

- (IBAction)warn:(UIButton *)sender
{
    NSString *message = [NSString stringWithFormat:@"Warn: %@", self.logMessageLabel.text];
    [self handleLog:message withLevel:DDLogLevelWarning withFlag:DDLogFlagWarning];
}

- (IBAction)error:(UIButton *)sender
{
    NSString *message = [NSString stringWithFormat:@"Error: %@", self.logMessageLabel.text];
    [self handleLog:message withLevel:DDLogLevelError withFlag:DDLogFlagError];
}

- (void)handleLog:(NSString*)message withLevel:(DDLogLevel)level withFlag:(DDLogFlag)flag
{
    NSLog(@"Sending %@", message);
    DDLogMessage* logMessage = [[DDLogMessage alloc]
                                initWithFormat: message
                                formatted: message
                                level: level
                                flag: flag
                                context: 0
                                file: @(__FILE__)
                                function: @(__func__)
                                line: __LINE__
                                tag: nil
                                options: (DDLogMessageOptions)0
                                timestamp: [NSDate date]];

    [DDLog log:(level != DDLogLevelError) message:logMessage];
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    DDLogLevel level = DDLogLevelError;
    switch(row) {
        case 0:
            level = DDLogLevelDebug;
            NSLog(@"Updating log level to Debug");
            break;
        case 1:
            level = DDLogLevelInfo;
            NSLog(@"Updating log level to Info");
            break;
        case 2:
            level = DDLogLevelWarning;
            NSLog(@"Updating log level to Warning");
            break;
        default:
            NSLog(@"Updating log level to Error");
            break;
    }

    NSArray *registeredClasses = [DDLog registeredClasses];
    for (Class class in registeredClasses)
    {
        [class ddSetLogLevel:level];
    }
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    [self.logLevelPicker selectRow:3 inComponent:0 animated:FALSE];
}

- (NSInteger)numberOfComponentsInPickerView:(nonnull UIPickerView *)pickerView {
    return 1;
}

- (NSInteger)pickerView:(nonnull UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return 4;
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    NSString * title = nil;
    switch(row) {
        case 0:
            title = @"Debug";
            break;
        case 1:
            title = @"Info";
            break;
        case 2:
            title = @"Warn";
            break;
        case 3:
            title = @"Error";
            break;
    }
    return title;
}

@end
