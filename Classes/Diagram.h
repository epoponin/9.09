//
//  Diagram.h
//  Calc
//
//  Created by Eugene Poponin on 16.06.11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface Diagram : UIViewController {
	IBOutlet UIButton *clearData;
	NSMutableArray *stats;
}

@property(nonatomic, retain) NSMutableArray *stats ;

- (IBAction)dismissView:(id)sender;	
- (void)displayChart;
- (IBAction)buttonClearDataPressed;

@end
