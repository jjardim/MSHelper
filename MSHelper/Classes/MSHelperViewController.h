//
//  MSHelperViewController.h
//  MSHelper
//
//  Created by Work on 8/2/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "MSHelper.h"

@interface MSHelperViewController : UIViewController {

	
	MSHelper *msHelper;
	
	
	IBOutlet UIImageView *msLogo;
	
}

-(IBAction)playaSound:(id)sender;
-(IBAction)stopaSound:(id)sender;


@property(nonatomic, retain) IBOutlet UIImageView *msLogo;

@end

