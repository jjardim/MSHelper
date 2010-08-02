//
//  MSHelper.m
//  MSHelper
//
//  Created by MacSpots Software (MacSpots.com) on 8/2/10.
//  Copyright MacSpots Software - All rights reserved.
//

#import "MSHelper.h"
#import "MSHelperViewController.h"


@implementation MSHelper

#pragma mark -
#pragma mark Sound

-(void)stopBGMusic
{
	[backgroundMusic close];
}
-(id)initWithBGMusic:(NSString*)aFile type:(NSString*)aType gain:(float)aGain repeat:(BOOL)aWillRepeat
{
	
	[backgroundMusic close];
	backgroundMusic = [[GBMusicTrack alloc] initWithPath:[[NSBundle mainBundle] pathForResource:aFile ofType:aType]];
	[backgroundMusic setRepeat:aWillRepeat];
	[backgroundMusic setGain:aGain];
	[backgroundMusic play];
	return self;
}

#pragma mark -
#pragma mark Alert Boxes

-(id)initAlertOK:(NSString*)aMsg title:(NSString*)aTitle
{
	
	UIAlertView *alert =[[UIAlertView alloc] initWithTitle:aTitle
												   message:aMsg
												  delegate:self 
										 cancelButtonTitle:@"OK" 
										 otherButtonTitles:nil];
	[alert show];
	[alert release];
	return self;
}



#pragma mark -
#pragma mark Core Animation
-(id)scaleImageAndRotate:(UIImageView*)anImage duration:(float)aDuration rotation:(float)aRotation scaleTo:(float)aScale
{
	[UIView beginAnimations:nil context:NULL];
	[UIView setAnimationDuration:aDuration];
	CGAffineTransform rotation = CGAffineTransformMakeRotation(aRotation);
	CGAffineTransform zoom = CGAffineTransformMakeScale(aScale,aScale);
	anImage.transform = CGAffineTransformConcat(rotation, zoom);
	[UIView commitAnimations];
	return self;

}

-(id)scaleImage:(UIImageView*)anImage duration:(float)aDuration scaleTo:(float)aScale
{
	[UIView beginAnimations:nil context:NULL];
	[UIView setAnimationDuration:aDuration];
	CGAffineTransform rotation = CGAffineTransformMakeRotation(0.0);
	CGAffineTransform zoom = CGAffineTransformMakeScale(aScale,aScale);
	anImage.transform = CGAffineTransformConcat(rotation,zoom);
	[UIView commitAnimations];
	return self;
}


-(id)scaleImageFrom:(UIImageView*)anImage duration:(float)aDuration scaleTo:(float)aScale scaleFrom:(float)aScaleFrom
{
	anImage.alpha=.50;
	anImage.transform = CGAffineTransformMakeScale(aScaleFrom, aScaleFrom);
	[UIView beginAnimations:nil context:NULL];
	[UIView setAnimationDuration:aDuration];
	anImage.alpha=1.0;
	anImage.transform = CGAffineTransformMakeScale(aScale, aScale);
	[UIView commitAnimations];
	return self;
}

-(id)moveImage:(UIView *)image duration:(NSTimeInterval)duration curve:(int)curve x:(CGFloat)x y:(CGFloat)y
{
		// Setup the animation
	[UIView beginAnimations:nil context:NULL];
	[UIView setAnimationDuration:duration];
	[UIView setAnimationCurve:curve];
	[UIView setAnimationBeginsFromCurrentState:YES];
	
		// The transform matrix
	CGAffineTransform transform = CGAffineTransformMakeTranslation(x, y);
	image.transform = transform;
	
		// Commit the changes
	[UIView commitAnimations];
	return self;
}





@end
