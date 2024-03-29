//
//  ApplicationController.h
//  Adium
//
//  Created by Ngan Pham on 4/17/08.
//  Copyright 2008 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AccountsNavigationController;
@class ContactListNavigationController;
@class ProfileNavigationController;
@class SettingsNavigationController;
@class MADatabase;

@interface ApplicationController : UITabBarController {
  IBOutlet AccountsNavigationController *accountsNavigationController;
  IBOutlet ContactListNavigationController *contactListNavigationController;
  IBOutlet ProfileNavigationController *profileNavigationController;
  IBOutlet SettingsNavigationController *settingsNavigationController;
}

@property (nonatomic, retain) AccountsNavigationController *accountsNavigationController;
@property (nonatomic, retain) ContactListNavigationController *contactListNavigationController;
@property (nonatomic, retain) ProfileNavigationController *profileNavigationController;
@property (nonatomic, retain) SettingsNavigationController *settingsNavigationController;

- (void)initializeCore;
- (void)initializeApplicationDatabase;
- (void)verifyApplicationDatabaseIntegrity;
- (void)initializeNavigationControllers;

+ (MADatabase *)applicationDatabase;
+ (BOOL)initializing;

@end
