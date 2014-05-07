//
//  DittoController.h
//  Ditto
//
//  Created by Tachibana Kaoru on 23/04/2014.
//  Copyright (c) 2014 Toyship.org. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DITController : NSObject<UIActionSheetDelegate>

+ (id)sharedController;

- (BOOL)changeUIWithDialog:(id)sender;

@end
