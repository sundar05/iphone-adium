//
//  BuddyListNavigationController.h
//  Adium
//
//  Created by Ngan Pham on 4/22/08.
//  Copyright 2008 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BuddyListController;

@interface BuddyListNavigationController : UINavigationController {
	BuddyListController *buddyListController;
}

@property (nonatomic, retain) BuddyListController *buddyListController;

- (void)initializeRootController;

@end
