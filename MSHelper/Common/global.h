/*
 *  global.h
 *  Lemonade Stand
 *
 *  Created by Play on 10/22/09.
 *  Copyright 2009 __MyCompanyName__. All rights reserved.
 *
 */


	//#import "test.h"
	//#import "Lemonade_StandAppDelegate.h"


	//#define CreateDelegate() Lemonade_StandAppDelegate *dg = (Lemonade_StandAppDelegate *)[[UIApplication sharedApplication] delegate]


#define itootMESSAGEBOX(mes1,mes2,buttontitle) UIAlertView *alert =[[UIAlertView alloc] initWithTitle:mes1 message:mes2 delegate:nil cancelButtonTitle:buttontitle otherButtonTitles:nil];[alert show];	[alert release]


// SEED random number generator
// example:
// itootRANDOMSEED();
#define itootRANDOMSEED srandom(time(NULL))


// Get a random number 
// Lets say between 1 and 12
// int num = itootRANDOMNUMBER(12);
#define itootRANDOMNUMBER(maxnum) random() % maxnum + 1 


// Get a random number 
// Lets say between 0 and 11
// int num = itootRANDOMNUMBER(12);
#define itootRANDOMNUMBERWITHZERO(maxnum) random() % maxnum  

// Get a random number - it bit more unique where randon number is more of a random number
// Lets say between 1 and 12
// int num = itootRANDOM(12);
#define itootRANDOM(maxnum) arc4random() % maxnum + 1 


//I use these defines for random int's. I call RANDOM_SEED() once in my app, the call something lie RANDOM_INT(1,10) 
//will return a random number between 1 and 10. Works great.
#define RANDOM_SEED() srandom(time(NULL))
#define RANDOM_INT(__MIN__, __MAX__) ((__MIN__) + random() % ((__MAX__+1) - (__MIN__)))