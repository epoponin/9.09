//
//  CalcAppDelegate.h
//  Calc
//
//  Created by Eugene Poponin on 15.06.11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Calc.h"
#import <CoreData/CoreData.h>

@class Calc;

@interface CalcAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

- (NSString *)applicationDocumentsDirectory;

@end

