//
//  Calc.m
//  Calc
//
//  Created by Eugene Poponin on 15.06.11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Calc.h"

@implementation Calc

- (void)viewDidLoad {
    [super viewDidLoad];
	
	self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"view_bkg.png"]];
		
	UIFont *font;
	font = [UIFont fontWithName:@"digital-7" size:60.0];
	[sumScreen setFont:font];
	
	font = [UIFont fontWithName:@"digital-7" size:30.0];
	[currentNumberScreen setFont:font];
	[font release];
	
	
	currentSum = 0;
	currentCategory = 0;
	floatPoint = FALSE;
	
	categories = [[NSMutableArray alloc] init];
	[categories addObject:@"Food"];
	[categories addObject:@"Fun"];
	[categories addObject:@"House"];
	[categories addObject:@"Transport"];
	[categories addObject:@"Misc"];
	
	[pickerView selectRow:0 inComponent:0 animated:NO];
	db = [[DB alloc] init];
	[db initDatabase];
	
}


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations.
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
	[categories release];
    [super dealloc];
}


-(IBAction)buttonDigitPressed:(id)sender {
	NSString *tmp = currentNumberScreen.text;
	if([tmp isEqual:@"+0.00"]){
		tmp = @"+";
	}
	
	if([tmp isEqual:@"+0"] && (int)[sender tag] == 0){
		return;
	}
	
	if(floatPoint && ([currentNumberScreen.text length] - ([currentNumberScreen.text rangeOfString:@"."].location+1) == 2)){
		return;
	}
	
	tmp = [tmp stringByAppendingString:[NSString stringWithFormat:@"%d",(int)[sender tag]]];
	
	
	currentNumberScreen.text = tmp;
}

-(IBAction)buttonPointPressed{
	if(!floatPoint && currentNumberScreen.text != @"+0.00"){
		currentNumberScreen.text = [currentNumberScreen.text stringByAppendingString:@"."];
		floatPoint = true;
	}
}

-(IBAction)cancelInput{
	currentNumberScreen.text = @"+0.00";
	floatPoint = FALSE;
}

-(IBAction)buttonCategoryPressed{
	if(pickerView.hidden){
		[pickerView setHidden:FALSE];
	}else{
		[pickerView setHidden:TRUE];
	}
}

-(IBAction)buttonPlusPressed{
	float toAdd = [currentNumberScreen.text floatValue];
	currentSum += toAdd;
	[self cancelInput];
	
	sumScreen.text = [NSString stringWithFormat:@"%.2f",currentSum];
}

-(IBAction)buttonCheckPressed{
	if(currentSum == 0){
		return;
	}
	
	[db saveSum:currentSum forCategory:currentCategory];	
	[self buttonShowDiagramPressed];
	sumScreen.text = @"+0.00";
	currentSum = 0;

}

-(IBAction)buttonShowDiagramPressed{
	Diagram *diagram = [[[Diagram alloc] init] autorelease];
	[diagram setModalTransitionStyle:UIModalTransitionStyleCoverVertical];
	[self presentModalViewController:diagram animated:YES];

	[diagram setStats:[db fetchStats]];
	[diagram displayChart];
}

// Picker view
// --------------------------------------------------

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView;
{
    return 1;
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
	[pickerView setHidden:true];
	currentCategory = row;
	
	NSString *img = [NSString alloc];
	
	switch (currentCategory) {
		case 0:
			img = @"category_food.png";
			break;
		case 1:
			img = @"category_fun.png";
			break;
		case 2:
			img = @"category_house.png";
			break;
		case 3:
			img = @"category_transport.png";
			break;
		case 4:
			img = @"category_misc.png";			
			break;
		default:
			break;
	}
	
	UIImage *image = [UIImage imageNamed:img];
	[categoryButton setImage: image forState: UIControlStateNormal];
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component;
{
    return [categories count];
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component;
{
    return [categories objectAtIndex:row];
}

// --------------------------------------------------

@end
