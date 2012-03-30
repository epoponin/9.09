//
//  Diagram.m
//  Calc
//
//  Created by Eugene Poponin on 16.06.11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//
#import <QuartzCore/QuartzCore.h>
#import "Diagram.h"
#import "PieClassAntiAlias.h"
#import "DB.h"

@implementation Diagram

@synthesize stats;
// The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
/*
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization.
    }
    return self;
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"view_bkg.png"]];
	
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

- (IBAction)dismissView:(id)sender {
    [self dismissModalViewControllerAnimated:YES];
}

- (void)displayChart {	
	int count = [stats count];
	if (!count) {
		return;
	}
	
	float sum = 0;
	for(int i=0; i<count; i++){
		sum = sum + [[stats objectAtIndex:i] floatValue];
	}
	
	PieClassAntiAlias *myPieClass=[[PieClassAntiAlias alloc]initWithFrame:CGRectMake(60, 100, 320, 230)];
	UIColor *color = [[UIColor alloc] initWithWhite:1 alpha:0];
	[myPieClass setBackgroundColor:color];
	
    myPieClass.itemArray = stats;
    myPieClass.myColorArray=[[NSArray alloc]initWithObjects:RGB(0,149,211),RGB(240,204,0),RGB(211,99,0),RGB(165,153,105),RGB(216,199,163), nil];
    myPieClass.radius=100;
	
	for(int i=0; i < 5; i++){
		UILabel *lbl = (UILabel *)[self.view viewWithTag:10 + i];		
		lbl.layer.cornerRadius = 4;		
		lbl.backgroundColor = [myPieClass.myColorArray objectAtIndex:i];
		
		if(sum && i < count){
			int percents = (int)roundf([[stats objectAtIndex:i] floatValue]/(sum/100));
			lbl.text = [[NSString alloc] initWithFormat: @"%d%%", percents];			
		}
	}
	
	[clearData setBackgroundColor:RGB(204,0,0)];
	clearData.layer.cornerRadius = 4;

	if (!sum) {
		[myPieClass release];
		UILabel *lbl = (UILabel *)[self.view viewWithTag:99];
		lbl.hidden = FALSE;
		return;
	}else{
		[self.view addSubview:myPieClass];
	}
	
}


-(IBAction)buttonClearDataPressed{
	DB *db = [[[DB alloc] init] autorelease];
	[db initDatabase];
	[db clear];
	
	[self dismissModalViewControllerAnimated:YES];
}

- (void)dealloc {
    [super dealloc];
}


@end
