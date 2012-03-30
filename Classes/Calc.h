//
//  Calc.h
//  Calc
//
//  Created by Eugene Poponin on 15.06.11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Diagram.h"
#import "DB.h"

@interface Calc : UIViewController {
	IBOutlet UILabel *sumScreen;
	IBOutlet UILabel *currentNumberScreen;
	IBOutlet UIButton *categoryButton;
	
	IBOutlet UIPickerView *pickerView;
	NSMutableArray *categories;
	
	float currentSum;
	int currentCategory;
	bool floatPoint;
	
	DB *db;
}

//
-(IBAction)buttonDigitPressed:(id)sender;
-(IBAction)buttonPointPressed;
-(IBAction)cancelInput;
-(IBAction)buttonCategoryPressed;
-(IBAction)buttonPlusPressed;
-(IBAction)buttonCheckPressed;
-(IBAction)buttonShowDiagramPressed;
//-(IBAction)buttonAddPressed:(id)sender;
//-(IBAction)buttonCheckPressed;

@end
