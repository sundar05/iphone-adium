//
//  ContactListNavigationController.h
//  Adium
//
//  Created by Ngan Pham on 4/22/08.
//  Copyright 2008 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ContactListController;

@interface ContactListNavigationController : UINavigationController {
	ContactListController *contactListController;
}

@property (nonatomic, retain) ContactListController *contactListController;

- (void)initializeRootController;

@end
