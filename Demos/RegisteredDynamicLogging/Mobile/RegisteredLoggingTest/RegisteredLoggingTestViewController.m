//
//  RegisteredLoggingTestViewController.m
//  RegisteredLoggingTest
//
//  CocoaLumberjack Demos
//

#import "RegisteredLoggingTestViewController.h"

@implementation RegisteredLoggingTestViewController

- (IBAction)debug:(UIButton *)sender
{
    NSLog(@"Debug: %@", self.logMessageLabel.text);
}

- (IBAction)info:(UIButton *)sender
{
    NSLog(@"Info: %@", self.logMessageLabel.text);
}

- (IBAction)warn:(UIButton *)sender
{
    NSLog(@"Warn: %@", self.logMessageLabel.text);
}

- (IBAction)error:(UIButton *)sender
{
    NSLog(@"Error: %@", self.logMessageLabel.text);
}

@end
