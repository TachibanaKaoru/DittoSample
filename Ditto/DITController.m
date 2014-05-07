//
//  DittoController.m
//  Ditto
//
//  Created by Tachibana Kaoru on 23/04/2014.
//  Copyright (c) 2014 Toyship.org. All rights reserved.
//

#import "DITController.h"

static DITController* sharedOne;

@implementation DITController

+ (id)sharedController{
	
	static dispatch_once_t onceToken;
	dispatch_once(&onceToken, ^{
		[[self alloc] init];
		
	});
	
	return sharedOne;
}

+ (id)allocWithZone:(struct _NSZone *)zone{

	__block id ret = nil;
	
	static dispatch_once_t onceToken;
	dispatch_once(&onceToken, ^{
		sharedOne = [super allocWithZone:zone];
		ret = sharedOne;
	});
	
	return ret;
}

- (BOOL)changeUIWithDialog:(id)sender{
	
	UIActionSheet* changeSheet = [[UIActionSheet alloc] initWithTitle:@"Please Select Storyboard"
															 delegate:self
													cancelButtonTitle:@"Cancel"
											   destructiveButtonTitle:nil
													otherButtonTitles:@"Red",@"Blue",@"Main",nil];
	[changeSheet showInView:[[[[UIApplication sharedApplication] delegate] window].rootViewController view]];

	return YES;
	
}

- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex{
	
	NSBundle* bundle = [NSBundle mainBundle];
	
    UIStoryboard* storyboard;
	switch (buttonIndex) {
		case 0:
			storyboard = [UIStoryboard storyboardWithName:@"Red" bundle:bundle];
			break;
		case 1:
			storyboard = [UIStoryboard storyboardWithName:@"Blue" bundle:bundle];
			break;
		case 2:
			storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:bundle];
			break;
			
		default:
            storyboard = nil;
			break;
	}

    if( storyboard != nil){
        
        UIViewController* viewController = [storyboard instantiateInitialViewController];
        
        dispatch_async(dispatch_get_main_queue(), ^{
            
            [[[UIApplication sharedApplication] delegate] window].rootViewController = viewController;
            
        });

    }

}

@end
