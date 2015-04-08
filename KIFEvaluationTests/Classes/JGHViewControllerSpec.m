//
//  JGHViewControllerSpec.m
//  KIFEvaluationTests
//
//  Created by Julian Grosshauser on 11/02/15.
//  Copyright (c) 2015 Julian Grosshauser. All rights reserved.
//

#import <KIF/KIF.h>
#import <Specta/Specta.h>

SpecBegin(JGHViewController)

describe(@"alertButton", ^{
    
    it(@"shows alert which can be dismissed", ^{
        // press "Show Alert" button
        [tester tapViewWithAccessibilityLabel:@"Show Alert"];

        // verify that the alert is shown
        [tester waitForTappableViewWithAccessibilityLabel:@"Alert"];

        // dismiss alert
        [tester tapViewWithAccessibilityLabel:@"Dismiss"];
    });
});

SpecEnd
