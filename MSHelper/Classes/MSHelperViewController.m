//
//  MSHelperViewController.m
//  MSHelper
//
//  Created by Work on 8/2/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "MSHelperViewController.h"

@implementation MSHelperViewController
@synthesize msLogo;

#pragma mark -
#pragma mark IBActions

-(IBAction)playaSound:(id)sender
{
	[msHelper initWithBGMusic:@"ThunderStorms" type:@"mp3" gain:0.3 repeat:YES];
}

-(IBAction)stopaSound:(id)sender
{
	[msHelper stopBGMusic];		
}


#pragma mark -
#pragma mark Apple Default Methods

/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];

	
	msHelper = [[MSHelper alloc] init];  // initialize the Helper Class

		//[msHelper initAlertOK:@"This is a Message" title:@"This is a Title"];
	
		//[msHelper scaleImageAndRotate:msLogo duration:3.0 rotation:0.0 scale:0.3];
		//	[msHelper scaleImageFrom:msLogo duration:0.6 scaleTo:0.8 scaleFrom:1.4];
	
	
	[msHelper moveImage:msLogo duration:1.5 curve:UIViewAnimationCurveLinear x:+50 y:0];
	
	/*
	[UIView beginAnimations:nil context:NULL];
	[UIView setAnimationDuration:1.5];
	CGAffineTransform rotation = CGAffineTransformMakeRotation(1.0);
	CGAffineTransform zoom = CGAffineTransformMakeScale(.5,.5);
	msLogo.transform = CGAffineTransformConcat(rotation, zoom);
	[UIView commitAnimations];
	*/
}


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
