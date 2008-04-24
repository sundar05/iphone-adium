//
//  ApplicationController.m
//  Adium
//
//  Created by Ngan Pham on 4/17/08.
//  Copyright 2008 __MyCompanyName__. All rights reserved.
//

#import "ApplicationController.h"
#import "BuddyListNavigationController.h"
#import "AccountsNavigationController.h"
#import "ProfileNavigationController.h"
#import "SettingsNavigationController.h"

@implementation ApplicationController

@synthesize accountsNavigationController;
@synthesize buddyListNavigationController;
@synthesize profileNavigationController;
@synthesize settingsNavigationController;

- (id)init
{
	if (self = [super init]) {
		// Initialize your application controller.
		self.title = @"ApplicationController";
		[self initializeCoreControllers];
	}
	return self;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	// Return YES for supported orientations.
	return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)didReceiveMemoryWarning
{
	[super didReceiveMemoryWarning]; // Releases the view if it doesn't have a superview.
	// Release anything that's not essential, such as cached data.
}

- (void)initializeCoreControllers {
	// initialize core controllers
	accountsNavigationController = [[[AccountsNavigationController alloc] init] autorelease];
	buddyListNavigationController = [[[BuddyListNavigationController alloc] init] autorelease];
	//profileNavigationController = [[[ProfileNavigationController alloc] init] autorelease];
	//settingsNavigationController = [[[SettingsNavigationController alloc] init] autorelease];

	// assign array to viewControllers
	//self.viewControllers = [NSArray arrayWithObjects:accountsNavigationController, buddyListNavigationController, profileNavigationController, settingsNavigationController, nil];
	self.viewControllers = [NSArray arrayWithObjects:accountsNavigationController, buddyListNavigationController, nil];
}

- (void)dealloc
{
	[super dealloc];
}


@end
