//
//  JGHViewController.m
//  JGHKIFEvaluation
//
//  Created by Julian Grosshauser on 11/02/15.
//  Copyright (c) 2015 Julian Grosshauser. All rights reserved.
//

#import "JGHViewController.h"

@implementation JGHViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UIButton *alertButton = [UIButton buttonWithType:UIButtonTypeSystem];
    [alertButton setTitle:NSLocalizedString(@"Show Alert", nil) forState:UIControlStateNormal];
    [alertButton sizeToFit];
    alertButton.center = self.view.center;
    [alertButton addTarget:self action:@selector(showAlert) forControlEvents:UIControlEventTouchUpInside];
    alertButton.accessibilityLabel = @"Show Alert";
    [self.view addSubview:alertButton];
}

- (void)showAlert {
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"Alert", nil)
                                                                             message:NSLocalizedString(@"This is an alert.", nil)
                                                                      preferredStyle:UIAlertControllerStyleAlert];

    UIAlertAction *alertAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"Dismiss", nil)
                                                          style:UIAlertActionStyleDefault
                                                        handler:nil];

    alertController.accessibilityLabel = @"Alert";
    alertAction.accessibilityLabel = @"Dismiss";

    [alertController addAction:alertAction];
    [self presentViewController:alertController animated:YES completion:nil];
}

@end
