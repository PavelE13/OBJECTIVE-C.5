//
//  ViewController.m
//  Lesson5
//
//  Created by User on 26.01.2024.
//

#import "ViewController.h"
#import "Loader.h"

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.loader = [Loader new];
    [self performLoadingWithGetRequest];
    self.textField1 = [[UITextField alloc] initWithFrame:CGRectMake(20, 100, 200, 30)];
    self.textField1.placeholder = @"Enter key1";
    [self.view addSubview:self.textField1];
    
    self.textField2 = [[UITextField alloc] initWithFrame:CGRectMake(20, 150, 200, 30)];
    self.textField2.placeholder = @"Enter key2";
    [self.view addSubview:self.textField2];
    
    self.submitButton = [UIButton buttonWithType:UIButtonTypeCustom];
    self.submitButton.frame = CGRectMake(20, 200, 100, 40);
    [self.submitButton setTitle:@"Submit" forState:UIControlStateNormal];
    [self.submitButton addTarget:self action:@selector(submitButtonTapped) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.submitButton];}

- (void)submitButtonTapped {
    NSString *key1 = self.textField1.text;
    NSString *key2 = self.textField2.text;
    
    if (key1.length == 0 || key2.length == 0) {
        NSLog(@"Please enter values for key1 and key2");
        return;
    }
    
    NSDictionary *arguments = @{@"key1": key1, @"key2": key2};
    
- (void) performLoadingWithGetRequest {
    [self.loader performGetRequestForUrl:@"https://postman-echo.com/get?" arguments:@{@"key1":@"val1", @"key2":@"val2"} completion:^(NSDictionary *dict, NSError *error) {
        dispatch_async(dispatch_get_main_queue(), ^{
            if (error) {
                NSLog(@"%@", error);
                return;
            }
            NSLog(@"%@", dict);
        });
    }];
}
- (IBAction)StartPOST:(id)sender {
    performLoadingWithPostRequest();
    
}

- (void) performLoadingWithPostRequest {
    [self.loader performPostRequestForUrl:@"https://postman-echo.com/post?" arguments:@{@"key1":@"val1", @"key2":@"val2"} completion:^(NSDictionary *dict, NSError *error) {
        dispatch_async(dispatch_get_main_queue(), ^{
            if (error) {
                NSLog(@"%@", error);
                return;
            }
            NSLog(@"%@", dict);
        });
    }];
}


@end
