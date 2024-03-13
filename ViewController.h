//
//  ViewController.h
//  Lesson5
//
//  Created by User on 26.01.2024.
//

#import <UIKit/UIKit.h>
#import "Loader.h"

@interface ViewController : UIViewController

@property (nonatomic, strong) Loader *loader;
@property (nonatomic, strong) UITextField *textField1;
@property (nonatomic, strong) UITextField *textField2;
@property (nonatomic, strong) UIButton *submitButton;
- (void) performLoadingWithGetRequest;

- (void) performLoadingWithPostRequest;

@end

