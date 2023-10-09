//
//  RegisteredLoggingTestViewController.h
//  RegisteredLoggingTest
//
//  CocoaLumberjack Demos
//

#import <UIKit/UIKit.h>

@interface RegisteredLoggingTestViewController : UIViewController <UIPickerViewDelegate>

- (IBAction)debug:(UIButton *)sender;
- (IBAction)info:(UIButton *)sender;
- (IBAction)warn:(UIButton *)sender;
- (IBAction)error:(UIButton *)sender;

@property (strong, nonatomic) IBOutlet UITextField *logMessageLabel;
@property (strong, nonatomic) IBOutlet UIPickerView *logLevelPicker;

@end
