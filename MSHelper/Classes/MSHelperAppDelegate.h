//
//  MSHelperAppDelegate.h
//  MSHelper
//
//  Created by Work on 8/2/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MSHelperViewController;

@interface MSHelperAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    MSHelperViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet MSHelperViewController *viewController;

@end

