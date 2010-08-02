//
//  MSHelper.h
//  MSHelper
//
//  Created by MacSpots Software (MacSpots.com) on 8/2/10.
//  Copyright MacSpots Software - All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GBMusicTrack.h"	


@class MSHelperViewController;
@interface MSHelper : NSObject {

	GBMusicTrack *backgroundMusic;
	
}

//Sound
-(void)stopBGMusic;
-(id)initWithBGMusic:(NSString*)aFile type:(NSString*)aType gain:(float)aGain repeat:(BOOL)aWillRepeat;

//Alert Boxes
-(id)initAlertOK:(NSString*)aMsg title:(NSString*)aTitle;

//Core Animation
-(id)scaleImageAndRotate:(UIImageView*)anImage duration:(float)aDuration rotation:(float)aRotation scaleTo:(float)aScale;

-(id)scaleImage:(UIImageView*)anImage duration:(float)aDuration scaleTo:(float)aScale;

-(id)scaleImageFrom:(UIImageView*)anImage duration:(float)aDuration scaleTo:(float)aScale scaleFrom:(float)aScaleFrom;

-(id)moveImage:(UIView *)image duration:(NSTimeInterval)duration curve:(int)curve x:(CGFloat)x y:(CGFloat)y;

@end
