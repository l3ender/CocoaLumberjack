//
//  RegisteredLoggingTestViewController.h
//  RegisteredLoggingTest
//
//  CocoaLumberjack Demos
//

#import <UIKit/UIKit.h>

@interface RegisteredLoggingTestViewController : UIViewController

- (IBAction)debug:(UIButton *)sender;
- (IBAction)info:(UIButton *)sender;
- (IBAction)warn:(UIButton *)sender;
- (IBAction)error:(UIButton *)sender;

@property (weak, nonatomic) IBOutlet UITextField *logMessageLabel;

@end
