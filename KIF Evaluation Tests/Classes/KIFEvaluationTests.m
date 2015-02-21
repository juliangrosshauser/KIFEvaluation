//
//  KIFEvaluationTests.m
//  KIF Evaluation Tests
//
//  Created by Julian Grosshauser on 11/02/15.
//  Copyright (c) 2015 Julian Grosshauser. All rights reserved.
//

#import <KIF/KIF.h>

@interface KIFEvaluationTests : KIFTestCase

@end

@implementation KIFEvaluationTests

- (void)testAlertButton {
    // press "Show Alert" button
    [tester tapViewWithAccessibilityLabel:@"Show Alert"];

    // verify that the alert is shown
    [tester waitForTappableViewWithAccessibilityLabel:@"Alert"];

    // dismiss alert
    [tester tapViewWithAccessibilityLabel:@"Dismiss"];
}

@end
