//
//  ApplicationController.h
//  Adium
//
//  Created by Ngan Pham on 4/17/08.
//  Copyright 2008 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AccountsNavigationController, BuddyListNavigationController, ProfileNavigationController, SettingsNavigationController;

@interface ApplicationController : UITabBarController {
	IBOutlet AccountsNavigationController *accountsNavigationController;
  IBOutlet BuddyListNavigationController *buddyListNavigationController;
	IBOutlet ProfileNavigationController *profileNavigationController;
	IBOutlet SettingsNavigationController *settingsNavigationController;
}

@property (nonatomic, retain) AccountsNavigationController *accountsNavigationController;
@property (nonatomic, retain) BuddyListNavigationController *buddyListNavigationController;
@property (nonatomic, retain) ProfileNavigationController *profileNavigationController;
@property (nonatomic, retain) SettingsNavigationController *settingsNavigationController;

- (void)initializeCoreControllers;

@end
