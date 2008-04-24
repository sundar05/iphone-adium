//
//  AccountsNavigationController.h
//  Adium
//
//  Created by Ngan Pham on 4/23/08.
//  Copyright 2008 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AccountsController;

@interface AccountsNavigationController : UINavigationController {
	AccountsController *accountsController; 
}

@property (nonatomic, retain) AccountsController *accountsController;

- (void)initializeRootController;

@end
